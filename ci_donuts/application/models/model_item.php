<?php

class Model_item extends CI_Model{
    public function tampil_data(){
        return $this->db->get('tb_item');
    }

    public function tambah_item($data,$table){
        $this->db->insert($table,$data);
    }

    public function edit_item($where,$table){
        return $this->db->get_where($table,$where);
    }

    public function update_data($where,$data,$table){
        $this->db->where($where);
        $this->db->update($table,$data); 
    } 

    public function hapus_data($where,$table){
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function find($id_item){
        $result = $this->db->where('id_item', $id_item)
                           ->limit(1)
                           ->get('tb_item');
        if($result->num_rows() > 0){
            return $result->row();
        }else{
            return array();
        }
    }

    public function detail_item($id_item)
    {
        $result = $this->db->where('id_item',$id_item)->get('tb_item');
        if($result->num_rows() > 0){
            return $result->result();
        }else {
            return false;
        }
    }

}