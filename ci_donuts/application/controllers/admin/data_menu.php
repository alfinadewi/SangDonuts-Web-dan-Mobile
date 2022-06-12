<?php

class Data_menu extends CI_Controller{

    public function __construct(){
        parent::__construct();

        if($this->session->userdata('role_id') != '1'){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda Belum Login!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>');
          redirect('auth/login');
        }
    }
    public function index()
    {
        $data['item'] = $this->model_item->tampil_data()->result();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/data_menu', $data);
        $this->load->view('templates_admin/footer');
    }

    public function tambah_aksi()
    {
        $nama_item       = $this->input->post('nama_item');
        $keterangan      = $this->input->post('keterangan');
        $menu            = $this->input->post('menu');
        $harga           = $this->input->post('harga');
        $gambar          = $_FILES['gambar']['name'];
        if ($gambar =''){}else{
            $config ['upload_path'] = './uploads';
            $config ['allowed_types'] = 'jpg|jpeg|png|gif';

            $this->load->library('upload', $config);
            if(!$this->upload->do_upload('gambar')){
                echo "Gambar gagal di upload";
            }else {
                $gambar=$this->upload->data('file_name');
            }
        }

        $data = array(
            'nama_item'     => $nama_item,
            'keterangan'    => $keterangan,
            'menu'          => $menu,
            'harga'         => $harga,
            'gambar'        => $gambar
        );
        
        $this->model_item->tambah_item($data, 'tb_item');
        redirect('admin/data_menu/index');
    }

    public function edit($id_item)
    {
        $where = array('id_item' =>$id_item);
        $data['item'] = $this->model_item->edit_item($where, 'tb_item')->result();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/edit_item', $data);
        $this->load->view('templates_admin/footer');
    }

    public function update(){
        $id_item        = $this->input->post('id_item');
        $nama_item      = $this->input->post('nama_item');
        $keterangan     = $this->input->post('keterangan');
        $menu           = $this->input->post('menu');
        $harga          = $this->input->post('harga');
        //$gambar         = $this->input->post('gambar');

        $data = array(

            'nama_item'     => $nama_item,
            'keterangan'    => $keterangan,
            'menu'          => $menu,
            'harga'         => $harga
            //'gambar'        => $gambar
        );

        $where = array(

            'id_item'       => $id_item
        );

        $this->model_item->update_data($where,$data, 'tb_item');
        redirect('admin/data_menu/index');

    }

    public function hapus ($id_item){
        $where = array('id_item' => $id_item);
        $this->model_item->hapus_data($where, 'tb_item');
        redirect('admin/data_menu/index');
    }
}