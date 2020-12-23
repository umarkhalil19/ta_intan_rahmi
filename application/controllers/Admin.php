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

    function mahasiswa()
    {
        $data['mahasiswa'] = $this->m_vic->get_data('tbl_mahasiswa');
        $this->mylib->aview('v_mahasiswa', $data);
    }

    function tambah_mahasiswa()
    {
        $data['dosen'] = $this->m_vic->get_data('dah_dosen');
        $this->mylib->aview('v_tambah_mahasiswa', $data);
    }

    function edit_mahasiswa($id)
    {
        $w = [
            'mhs_id' => $id
        ];
        $data = [
            'mhs_status_judul' => 0
        ];
        $this->m_vic->update_data($w, $data, 'tbl_mahasiswa');
        $this->session->set_flashdata('suces', 'Status Berhasil Diubah, Mahasiswa tersebut sudah bisa merubah judul');
        redirect('admin/mahasiswa?notif=suces');
    }

    function delete_mahasiswa($id)
    {
        $w = [
            'mhs_id' => $id
        ];
        $this->m_vic->delete_data($w, 'tbl_mahasiswa');
        $this->session->set_flashdata('error', 'Data Mahasiswa Berhasil Dihapus');
        redirect('admin/mahasiswa?notif=error');
    }

    function tambah_mahasiswa_act()
    {
        $this->form_validation->set_rules('nim', 'NIM', 'required|trim|is_unique[tbl_mahasiswa.mhs_nim]', [
            'is_unique' => 'NIM Sudah Terdaftar'
        ]);
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('dosen', 'Dosen', 'required|trim');
        if ($this->form_validation->run() != true) {
            $this->tambah_mahasiswa();
        } else {
            $data = [
                'mhs_nim' => $this->input->post('nim'),
                'mhs_nama' => $this->input->post('nama'),
                'mhs_dosen_pembimbing' => $this->input->post('dosen'),
                'mhs_pass' => str_mod(vic_slug_akun($this->input->post('pass'))),
                'h_pengguna' => $this->session->userdata('login'),
                'h_tanggal' =>  date('Y-m-d'),
                'h_waktu' => date('H:i:s')
            ];
            $this->m_vic->insert_data($data, 'tbl_mahasiswa');
            redirect('admin/mahasiswa');
        }
    }

    function dosen_penguji($id)
    {
        $w = [
            'mhs_id' => $id
        ];
        $data['mhs'] = $this->m_vic->edit_data($w, 'tbl_mahasiswa')->row();
        $data['dosen'] = $this->m_vic->get_data('dah_dosen');
        $this->mylib->aview('v_dosen_penguji', $data);
    }

    function dosen_penguji_act()
    {
        $id = $this->input->post('id');
        $this->form_validation->set_rules('dosen_penguji', 'Dosen Penguji', 'required');
        if ($this->form_validation->run() != true) {
            $this->dosen_penguji($id);
        } else {
            $w = [
                'mhs_id' => $id
            ];
            $data = [
                'mhs_dosen_penguji' => $this->input->post('dosen_penguji')
            ];
            $this->m_vic->update_data($w, $data, 'tbl_mahasiswa');
            $this->session->set_flashdata('suces', 'Data Dosen Penguji Berhasil Ditambah');
            redirect('admin/mahasiswa?notif=suces');
        }
    }

    function users()
    {
        $data['users'] = $this->m_vic->get_data('tbl_users');
        $this->mylib->aview('v_users', $data);
    }

    function change_pass()
    {
        $this->mylib->aview('v_change_pass');
    }

    function update_pass()
    {
        $this->form_validation->set_rules('pass1', 'Password baru', 'trim|required');
        $this->form_validation->set_rules('pass2', 'Konfirmasi Password baru', 'trim|required|matches[pass1]');
        if ($this->form_validation->run() != true) {
            $this->change_pass();
        } else {
            $w = [
                'user_id' => $this->session->userdata('id')
            ];
            $data = [
                'user_pass' => str_mod(vic_slug_akun($this->input->post('pass1'))),
            ];
            $this->m_vic->update_data($w, $data, 'tbl_users');
            $this->session->set_flashdata('suces', 'Password Anda Berhasil Diubah');
            redirect('Admin/index?notif=suces');
        }
    }

    function reset_pass($id)
    {
        $w = [
            'mhs_id' => $id
        ];
        $data = [
            'mhs_pass' => str_mod(vic_slug_akun('kp_informatika')),
            'mhs_status_pass' => 0
        ];
        $this->m_vic->update_data($w, $data, 'tbl_mahasiswa');
        $this->session->set_flashdata('suces', 'Password Berhasil di Reset');
        redirect('admin/mahasiswa?notif=suces');
    }

    function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url());
    }
}
