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

    function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url());
    }
}
