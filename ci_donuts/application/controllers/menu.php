<?php

class menu extends CI_Controller{
    public function makanan()
    {
        $data['makanan'] = $this->model_menu->
        data_makanan()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('makanan',$data);
        $this->load->view('templates/footer');

    } 
    public function minuman()
    {
        $data['minuman'] = $this->model_menu->
        data_minuman()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('minuman',$data);
        $this->load->view('templates/footer');

    } 
}