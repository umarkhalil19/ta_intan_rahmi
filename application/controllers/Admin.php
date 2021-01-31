<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
        $this->load->helper('url');
        $this->load->helper('vic_helper');
        $this->load->helper('my_helper');
        $this->load->helper('stem_helper');
        $this->load->helper('vic_convert_helper');
        $this->load->library(array('session', 'form_validation'));
        $this->load->library('mylib');
        $this->load->model('m_vic');
        // if ($this->session->userdata('level') != '99') {
        //     redirect('login');
        // }
    }

    function index()
    {
        $this->mylib->aview('v_index');
    }

    public function kategori()
    {
        $data['kategori'] = $this->m_vic->get_data('tbl_kategori');
        $this->mylib->aview('v_kategori', $data);
    }

    public function kategori_add()
    {
        $this->mylib->aview('v_kategori_add');
    }

    public function kategori_add_act()
    {
        $this->form_validation->set_rules('nama', 'Nama Kategori', 'required');
        if ($this->form_validation->run() != true) {
            $this->kategori_add();
        } else {
            $data = [
                'kategori_nama' => $this->input->post('nama'),
                'h_pengguna' => 'intan',
                'h_tanggal' => date('Y-m-d'),
                'h_waktu' => date('H:i:s'),
                'h_ip' => _getIpaddress(),
            ];
            $this->m_vic->insert_data($data, 'tbl_kategori');
            $this->session->set_flashdata('suces', 'Data kategori berhasil ditambah!!!');
            redirect('admin/kategori?notif=suces');
        }
    }

    public function kategori_edit($id = 0)
    {
        if ($id === 0) {
            $this->session->set_flashdata('error', 'Data tidak tersedia');
            redirect('admin/kategori?notif=error');
        } else {
            $w = [
                'kategori_id' => $id
            ];
            $data['kategori'] = $this->m_vic->edit_data($w, 'tbl_kategori')->row();
            $this->mylib->aview('v_kategori_edit', $data);
        }
    }

    public function kategori_update()
    {
        if ($this->input->post('id') === '') {
            $this->session->set_flashdata('error', 'Data tidak tersedia');
            redirect('admin/kategori?notif=error');
        } else {
            $w = [
                'kategori_id' => $this->input->post('id')
            ];
            $data = [
                'kategori_nama' => $this->input->post('nama'),
                'h_pengguna' => 'intan',
                'h_tanggal' => date('Y-m-d'),
                'h_waktu' => date('H:i:s'),
                'h_ip' => _getIpaddress(),
            ];
            $this->m_vic->update_data($w, $data, 'tbl_kategori');
            $this->session->set_flashdata('suces', 'Data kategori berhasil diubah!!!');
            redirect('admin/kategori?notif=suces');
        }
    }

    public function kategori_delete($id = 0)
    {
        if ($id === 0) {
            $this->session->set_flashdata('error', 'Data tidak tersedia');
            redirect('admin/kategori?notif=error');
        } else {
            $w = [
                'kategori_id' => $id
            ];
            $this->m_vic->delete_data($w, 'tbl_kategori');
            $this->session->set_flashdata('suces', 'Data kategori berhasil dihapus!!!');
            redirect('admin/kategori?notif=suces');
        }
    }

    //data_latih
    public function latih()
    {
        $data['latih'] = $this->m_vic->get_data('tbl_data_latih');
        $this->mylib->aview('v_latih', $data);
    }

    public function latih_add()
    {
        $data['kategori'] = $this->m_vic->get_data('tbl_kategori');
        $this->mylib->aview('v_latih_add', $data);
    }

    public function latih_add_act()
    {
        $id = $this->db->query("SELECT max(latih_id) as nomor FROM tbl_data_latih")->row();
        if ($id) {
            $nomor = $id->nomor + 1;
        } else {
            $nomor = 1;
        }
        $this->form_validation->set_rules('kalimat', 'Kalimat', 'required');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        $this->form_validation->set_rules('type', 'Type', 'required');
        if ($this->form_validation->run() != true) {
            $this->latih_add();
        } else {
            $kalimat_asli = $this->input->post('kalimat');
            $proses = _textpreprosses($kalimat_asli);
            $count = array_count_values($proses);
            $kalimat_proses = '';
            foreach ($count as $key => $value) {
                if ($kalimat_proses === '') {
                    $kalimat_proses = $key . " ";
                } else {
                    $kalimat_proses = $kalimat_proses . " " . $key;
                }
                if ($key === "") {
                } else {
                    $data_kata = [
                        'kata' => trim($key),
                        'kata_frekuensi' => $value,
                        'latih_id' => $nomor,
                        'latih_category' => $this->input->post('type')
                    ];
                    $this->m_vic->insert_data($data_kata, 'tbl_kata_latih');
                }
            }

            $data = [
                'latih_id' => $nomor,
                'latih_kalimat_asli' => $kalimat_asli,
                'latih_kalimat_proses' => $kalimat_proses,
                'latih_class' => $this->input->post('kategori'),
                'latih_category' => $this->input->post('type')
            ];
            $this->m_vic->insert_data($data, 'tbl_data_latih');
            redirect('admin/latih');
        }
    }

    public function latih_delete($id = 0)
    {
        if ($id == 0) {
            redirect('admin/latih');
        } else {
            $w = ['latih_id' => $id];
            $this->m_vic->delete_data($w, 'tbl_data_latih');
            $this->m_vic->delete_data($w, 'tbl_kata_latih');
            redirect('admin/latih');
        }
    }

    //dat_uji
    public function uji()
    {
        $data['uji'] = $this->m_vic->get_data('tbl_data_uji');
        $this->mylib->aview('v_uji', $data);
    }

    public function uji_add()
    {
        // $data['kategori'] = $this->m_vic->get_data('tbl_kategori');
        $this->mylib->aview('v_uji_add');
    }

    public function uji_add_act()
    {
        $id = $this->db->query("SELECT max(uji_id) as nomor FROM tbl_data_uji")->row();
        if ($id) {
            $nomor = $id->nomor + 1;
        } else {
            $nomor = 1;
        }

        $this->form_validation->set_rules('kalimat', 'Kalimat', 'required');
        // $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        $this->form_validation->set_rules('type', 'Type', 'required');
        if ($this->form_validation->run() != true) {
            $this->uji_add();
        } else {
            $kalimat_asli = $this->input->post('kalimat');
            $proses = _textpreprosses($kalimat_asli);
            $count = array_count_values($proses);
            $kalimat_proses = '';
            foreach ($count as $key => $value) {
                if ($kalimat_proses === '') {
                    $kalimat_proses = $key . " ";
                } else {
                    $kalimat_proses = $kalimat_proses . " " . $key;
                }
                if ($key === "") {
                } else {
                    $data_kata = [
                        'kata' => trim($key),
                        'kata_frekuensi' => $value,
                        'uji_id' => $nomor,
                        'uji_category' => $this->input->post('type')
                    ];
                    $this->m_vic->insert_data($data_kata, 'tbl_kata_uji');
                }
            }

            $data = [
                'uji_id' => $nomor,
                'uji_kalimat_asli' => $kalimat_asli,
                'uji_kalimat_proses' => $kalimat_proses,
                'uji_class' => 0,
                'uji_category' => $this->input->post('type')
            ];
            $this->m_vic->insert_data($data, 'tbl_data_uji');
            redirect('admin/uji');
        }
    }

    public function uji_act_ver2($id = 0)
    {
        $this->db->truncate('tbl_wdt');
        $this->db->truncate('tbl_wds');
        $this->db->truncate('tbl_panjang_vektor');
        $this->db->truncate('tbl_hasil');
        if ($id == 0) {
            redirect(base_url('admin/uji/'));
        } else {
            $w = ['uji_id' => $id];
            $uji = $this->m_vic->edit_data($w, 'tbl_data_uji')->row();
            $uji_category = $uji->uji_category;
            $w_latih = ['latih_category' => $uji_category];
            $latih = $this->m_vic->edit_data($w_latih, 'tbl_data_latih');
            $kata = $this->db->query("SELECT kata FROM tbl_kata_latih WHERE latih_category='$uji_category' UNION SELECT kata FROM tbl_kata_uji WHERE uji_id='$id'");
            $trow['latih'] = $latih;
            $trow['uji'] = $uji;
            $trow['kata'] = $kata;
            $trow['id'] = $id;
            foreach ($kata->result() as $key) {
                $df = 0;
                // print_r($key->kata);
                foreach ($latih->result() as $l) {
                    $cek = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_latih WHERE kata='$key->kata' AND latih_id='$l->latih_id'");
                    if ($cek->row()) {
                        $q = $cek->row();
                        // print_r($q->kata_frekuensi);
                        $df++;
                        // echo " ";
                    } else {
                        $q = 0;
                        // print_r($q);
                        // echo " ";
                    }
                }
                $cek_uji = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_uji WHERE kata='$key->kata' AND uji_id='$id'");
                if ($cek_uji->row()) {
                    $q_uji = $cek_uji->row();
                    // print_r($q_uji->kata_frekuensi);
                    $tf_uji = $q_uji->kata_frekuensi;
                    $df++;
                    // echo " ";
                } else {
                    $q_uji = 0;
                    // print_r($q_uji);
                    $tf_uji = $q_uji;
                    // echo " ";
                }
                // echo $df;
                // echo " ";
                $n = ($latih->num_rows() + 1) / $df;
                //'perimainan_1_uji => 1.0022'
                // $array_n = [
                //     "$kata.$latih->id.'latih'"
                // ]
                // echo " ";
                // echo log10($n) . " ";
                $data = [
                    'wdt_kata' => $key->kata,
                    'wdt_data' => $id,
                    'wdt_nilai' => $tf_uji * log10($n),
                    'wdt_category' => 'uji'
                ];
                $this->m_vic->insert_data($data, 'tbl_wdt');
                $data = [
                    'vektor_kata' => $key->kata,
                    'vektor_data' => $id,
                    'vektor_nilai' => pow($tf_uji * log10($n), 2),
                    'vektor_category' => 'uji'
                ];
                $this->m_vic->insert_data($data, 'tbl_panjang_vektor');
                foreach ($latih->result() as $l) {
                    $cek = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_latih WHERE kata='$key->kata' AND latih_id='$l->latih_id'");
                    if ($cek->row()) {
                        $q = $cek->row();
                        $data = [
                            'wdt_kata' => $key->kata,
                            'wdt_data' => $l->latih_id,
                            'wdt_nilai' => $q->kata_frekuensi * log10($n),
                            'wdt_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_wdt');
                        $data = [
                            'wds_kata' => $key->kata,
                            'wds_data' => $l->latih_id,
                            'wds_nilai' => ($tf_uji * log10($n)) * ($q->kata_frekuensi * log10($n)),
                            // 'wdt_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_wds');
                        $data = [
                            'vektor_kata' => $key->kata,
                            'vektor_data' => $l->latih_id,
                            'vektor_nilai' => pow($q->kata_frekuensi * log10($n), 2),
                            'vektor_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_panjang_vektor');
                        // print_r($q->kata_frekuensi * log10($n));
                        // // $df++;
                        // echo " ";
                    } else {
                        $q = 0;
                        $data = [
                            'wdt_kata' => $key->kata,
                            'wdt_data' => $l->latih_id,
                            'wdt_nilai' => $q * log10($n),
                            'wdt_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_wdt');
                        $data = [
                            'wds_kata' => $key->kata,
                            'wds_data' => $l->latih_id,
                            'wds_nilai' => ($tf_uji * log10($n)) * ($q * log10($n)),
                            // 'wdt_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_wds');
                        $data = [
                            'vektor_kata' => $key->kata,
                            'vektor_data' => $l->latih_id,
                            'vektor_nilai' => pow($q * log10($n), 2),
                            'vektor_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_panjang_vektor');
                        // print_r($q * log10($n));
                        // echo " ";
                    }
                }
                // print_r($tf_uji * log10($n));
                // echo " ";
                // echo '<br>';
            }
            $vektor = $this->db->query("SELECT SUM(vektor_nilai) AS panjang FROM tbl_panjang_vektor WHERE vektor_data='$id' AND vektor_category='uji'")->row();
            $vektor_uji = sqrt($vektor->panjang);
            // echo "<br>";
            foreach ($latih->result() as $l) {
                $vektor = $this->db->query("SELECT SUM(vektor_nilai) AS panjang FROM tbl_panjang_vektor WHERE vektor_data='$l->latih_id' AND vektor_category='latih'")->row();
                // echo sqrt($vektor->panjang);
                // echo '-';
                $wds = $this->db->query("SELECT SUM(wds_nilai) AS wds FROM tbl_wds WHERE wds_data='$l->latih_id'")->row();
                $akhir = $wds->wds / ($vektor_uji * (sqrt($vektor->panjang)));
                // echo "<br>";
                $data = [
                    'hasil_data' => $l->latih_id,
                    'hasil_nilai' => $akhir,
                    'hasil_category' => $l->latih_class
                ];
                $this->m_vic->insert_data($data, 'tbl_hasil');
            }
            $trow['hasil'] = $this->db->query("SELECT * FROM tbl_hasil ORDER BY hasil_nilai DESC LIMIT 6");
            $this->mylib->aview('v_hasil', $trow);
        }
        // $this->mylib->aview('v_hasil');
    }
    public function uji_act_ver3($id = 0)
    {
        $this->db->truncate('tbl_wdt');
        $this->db->truncate('tbl_wds');
        $this->db->truncate('tbl_panjang_vektor');
        $this->db->truncate('tbl_hasil');
        if ($id == 0) {
            redirect(base_url('admin/uji/'));
        } else {
            $w = ['uji_id' => $id];
            $uji = $this->m_vic->edit_data($w, 'tbl_data_uji')->row();
            $uji_category = $uji->uji_category;
            $w_latih = ['latih_category' => $uji_category];
            $latih = $this->m_vic->edit_data($w_latih, 'tbl_data_latih');
            $kata = $this->db->query("SELECT kata FROM tbl_kata_latih WHERE latih_category='$uji_category' UNION SELECT kata FROM tbl_kata_uji WHERE uji_id='$id'");
            $trow['latih'] = $latih;
            $trow['uji'] = $uji;
            $trow['kata'] = $kata;
            $trow['id'] = $id;
            foreach ($kata->result() as $key) {
                $df = 0;
                foreach ($latih->result() as $l) {
                    $cek = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_latih WHERE kata='$key->kata' AND latih_id='$l->latih_id'");
                    if ($cek->row()) {
                        $q = $cek->row();
                        $df++;
                    } else {
                        $q = 0;
                    }
                }
                $cek_uji = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_uji WHERE kata='$key->kata' AND uji_id='$id'");
                if ($cek_uji->row()) {
                    $q_uji = $cek_uji->row();
                    $tf_uji = $q_uji->kata_frekuensi;
                    $df++;
                } else {
                    $q_uji = 0;
                    $tf_uji = $q_uji;
                }
                $n = ($latih->num_rows() + 1) / $df;
                $data = [
                    'wdt_kata' => $key->kata,
                    'wdt_data' => $id,
                    'wdt_nilai' => $tf_uji * log10($n),
                    'wdt_category' => 'uji'
                ];
                $this->m_vic->insert_data($data, 'tbl_wdt');
                $data = [
                    'vektor_kata' => $key->kata,
                    'vektor_data' => $id,
                    'vektor_nilai' => pow($tf_uji * log10($n), 2),
                    'vektor_category' => 'uji'
                ];
                $this->m_vic->insert_data($data, 'tbl_panjang_vektor');
                foreach ($latih->result() as $l) {
                    $cek = $this->db->query("SELECT kata_frekuensi FROM tbl_kata_latih WHERE kata='$key->kata' AND latih_id='$l->latih_id'");
                    if ($cek->row()) {
                        $q = $cek->row();
                        $data = [
                            'wdt_kata' => $key->kata,
                            'wdt_data' => $l->latih_id,
                            'wdt_nilai' => $q->kata_frekuensi * log10($n),
                            'wdt_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_wdt');
                        $data = [
                            'wds_kata' => $key->kata,
                            'wds_data' => $l->latih_id,
                            'wds_nilai' => ($tf_uji * log10($n)) * ($q->kata_frekuensi * log10($n)),
                            // 'wdt_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_wds');
                        $data = [
                            'vektor_kata' => $key->kata,
                            'vektor_data' => $l->latih_id,
                            'vektor_nilai' => pow($q->kata_frekuensi * log10($n), 2),
                            'vektor_category' => 'latih'
                        ];
                        $this->m_vic->insert_data($data, 'tbl_panjang_vektor');
                    } else {
                        $q = 0;
                    }
                }
            }
            $vektor = $this->db->query("SELECT SUM(vektor_nilai) AS panjang FROM tbl_panjang_vektor WHERE vektor_data='$id' AND vektor_category='uji'")->row();
            $vektor_uji = sqrt($vektor->panjang);
            // echo "<br>";
            foreach ($latih->result() as $l) {
                $vektor = $this->db->query("SELECT SUM(vektor_nilai) AS panjang FROM tbl_panjang_vektor WHERE vektor_data='$l->latih_id' AND vektor_category='latih'")->row();
                // echo sqrt($vektor->panjang);
                // echo '-';
                $wds = $this->db->query("SELECT SUM(wds_nilai) AS wds FROM tbl_wds WHERE wds_data='$l->latih_id'")->row();
                $akhir = $wds->wds / ($vektor_uji * (sqrt($vektor->panjang)));
                // echo "<br>";
                $data = [
                    'hasil_data' => $l->latih_id,
                    'hasil_nilai' => $akhir,
                    'hasil_category' => $l->latih_class
                ];
                $this->m_vic->insert_data($data, 'tbl_hasil');
            }
            $final_values = hasil_uji();
            $w_uji = ['uji_id' => $id];
            $up = [
                'uji_class' => $final_values
            ];
            $this->m_vic->update_data($w_uji, $up, 'tbl_data_uji');

            $trow['hasil'] = $this->db->query("SELECT * FROM tbl_hasil ORDER BY hasil_nilai DESC LIMIT 6");
            $this->mylib->aview('v_hasil', $trow);
        }
        // $this->mylib->aview('v_hasil');
    }
     public function uji_delete($id = 0)
    {
        if ($id == 0) {
            redirect('admin/uji');
        } else {
            $w = ['uji_id' => $id];
            $this->m_vic->delete_data($w, 'tbl_data_uji');
            $this->m_vic->delete_data($w, 'tbl_kata_uji');
            redirect('admin/uji');
        }
    }

    public function test()
    {
        $hasil = hasil_uji();
        var_dump($hasil);
    }

    function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url());
    }
}
