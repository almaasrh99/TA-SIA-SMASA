<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Galeri extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('Galeri_model' => 'galeri'));
    }

    public function index() {

        if (!$this->ion_auth->logged_in()) {
            // redirect them to the login page
            redirect('auth/login', 'refresh');
        } else {
            $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
            $this->data['_get_galeri'] = $this->event->read_per_month();
            if(!isset($this->data['_get_galeri'])||empty($this->data['_get_event'])){
                $this->session->set_flashdata('message','Tidak ada Galeri!');
            }
            $this->data['is_user'] = $this->ion_auth->user()->row();

            $this->data['_view'] = 'galeri/galeri_list';
            $this->template->_render_page('layouts/backend', $this->data);
        }

    }

    public function list_admin(){

        if (!$this->ion_auth->logged_in() || (!$this->ion_auth->is_admin())) {
            redirect('auth', 'refresh');
        }
        $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));
        $this->data['is_user'] = $this->ion_auth->user()->row();
        $this->data['_get_galeri'] = $this->galeri->get_galeri();

        //partial datatable
        $this->data['_partial_css'] = '<!-- JQuery DataTable Css -->
        <link href="'.base_url('assets/backend').'/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">';
        $this->data['_partial_js'] = '<!-- Jquery DataTable Plugin Js -->
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/jquery.dataTables.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
        <script src="'.base_url('assets/backend').'/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>
        <!-- Custom Js -->
        <script src="'.base_url('assets/backend').'/js/pages/tables/jquery-datatable.js"></script>
        ';
        //end partial
        $this->data['_view'] = 'galeri/galeri_admin_list';
        $this->template->_render_page('layouts/backend', $this->data);
    }

    public function create()
    {
        if (!$this->ion_auth->logged_in() || (!$this->ion_auth->is_admin())) {
            // redirect them to the login page
            redirect('auth/login', 'refresh');
        } else {
            $this->data['is_user'] = $this->ion_auth->user()->row();

            $this->data['button'] = 'Tambah';
            $this->data['action'] = site_url('galeri/tambah_aksi');
            $this->data['id'] = array(
                'name' => 'id',
                'type' => 'hidden',
                'value' => $this->form_validation->set_value('id'),
                'class' => 'form-control',
            );
            $this->data['deskripsi'] = array(
                'name' => 'deskripsi',
                'type' => 'text',
                'value' => $this->form_validation->set_value('deskripsi'),
                'class' => 'form-control',
            );
            $this->data['foto'] = array(
                'name' => 'foto',
                'type' => 'file',
                'value' => $this->form_validation->set_value('foto'),
                'class' => 'form-control',
            );
            
            $this->data['_view'] = 'galeri/galeri_form';
            $this->template->_render_page('layouts/backend', $this->data);
        }
    }

    public function tambah_aksi()
    {
        $this->_rules();

        if ($this->form_validation->run() == false) {
            $this->create();
        } else {
            $data = array(
                
                'deskripsi' => $this->input->post('deskripsi', true),
                'nama_file' => $this->input->post('nama_file', true),
                'ukuran_file' => $this->input->post('ukuran_file', true),
                'tipe_file' => ($this->input->post('tipe_file', true)),
                'foto' => $this->input->post('foto', true)
            );
            $this->event->insert($data);
            $this->session->set_flashdata('message','Data berhasil ditambahkan');
            redirect(site_url('galeri/galeri_admin_list'));
        }
    }

    // public function tambah(){
    //     $data = array();
        
    //     if($this->input->post('submit')){ // Jika user menekan tombol Submit (Simpan) pada form
    //       // lakukan upload file dengan memanggil function upload yang ada di GambarModel.php
    //       $upload = $this->GaleriModel->upload();
          
    //       if($upload['result'] == "success"){ // Jika proses upload sukses
    //          // Panggil function save yang ada di GambarModel.php untuk menyimpan data ke database
    //         $this->GambarModel->save($upload);
            
    //         redirect('gambar'); // Redirect kembali ke halaman awal / halaman view data
    //       }else{ // Jika proses upload gagal
    //         $data['message'] = $upload['error']; // Ambil pesan error uploadnya untuk dikirim ke file form dan ditampilkan
    //       }
    //     }
        
    //     $this->load->view('galeri/galeri_form', $data);
    //   }

    public function _rules()
    {
        $this->form_validation->set_rules('nama_file', 'nama_file', 'trim|required');
        $this->form_validation->set_rules('ukuran_file', 'ukuran_file', 'trim|required');
        $this->form_validation->set_rules('tipe_file', 'tipe_file', 'trim|required');
        $this->form_validation->set_rules('deskripsi', 'deskripsi', 'trim|required');
        $this->form_validation->set_rules('id', 'id', 'trim');
        $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }
}