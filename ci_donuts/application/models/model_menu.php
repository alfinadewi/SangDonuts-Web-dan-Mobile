<?php

class Model_menu extends CI_Model{
    public function data_makanan(){
        return $this->db->get_where("tb_item",array('menu' => 
        'makanan'));
    }

    public function data_minuman(){
        return $this->db->get_where("tb_item",array('menu' => 
        'minuman'));
    }
}