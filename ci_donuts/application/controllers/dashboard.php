<?php

class Dashboard extends CI_Controller{

    public function __construct(){
        parent::__construct();

        if($this->session->userdata('role_id') != '2'){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda Belum Login!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>');
          redirect('auth/login');
        }
    }

    public function tambah_ke_keranjang($id_item){
        $item = $this->model_item->find($id_item);

        $data = array(
            'id'        => $item->id_item,
            'qty'       => 1,
            'price'     => $item->harga,
            'name'      => $item->nama_item
        );

        $this->cart->insert($data);
        redirect('welcome');
    }

    public function detail_keranjang(){
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('keranjang');
        $this->load->view('templates/footer');
    }

    public function hapus_keranjang(){
        $this->cart->destroy();
        redirect('welcome');
    }

    public function pembayaran(){
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('pembayaran');
        $this->load->view('templates/footer');
    }

    public function proses_pesanan(){
        $is_processed = $this->model_invoice->index();
        if($is_processed){
            $this->cart->destroy();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('proses_pesanan');
            $this->load->view('templates/footer');    
        } else {
            echo "Maaf, Pesanan Anda Gagal";
        }
    }

    public function detail($id_item)
    {
        $data['item'] = $this->model_item->detail_item($id_item);
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('detail_item',$data);
        $this->load->view('templates/footer');
    }

}