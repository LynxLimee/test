<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai_model extends CI_Model {

	public function get_data($table)
    {
        return $this->db->get($table);
    }

    public function insert_data($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function update_data($data, $table)
    {
        $this->db->where('id_pegawai', $data['id_pegawai']);
        $this->db->update($table, $data);
    }

    public function delete($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function getPegawai()
    {
        $query = $this->db->get('tbl_pegawai');
        return $query->result();
    }

    public function get_keyword($keyword)
    {
        $this->db->select('*');
        $this->db->from('tbl_pegawai');
        $this->db->like('nama', $keyword);
        $this->db->or_like('ska_skk', $keyword);
        $this->db->or_like('grade_ska', $keyword);
        $this->db->or_like('status', $keyword);
        return $this->db->get()->result();
    }

    public function detail_data($id_pegawai = NULL)
    {
        $query = $this->db->get_where('tbl_pegawai', array('id_pegawai' => $id_pegawai))->row();
        return $query;
    }
    
    
}

/* End of file Pegawai_model.php */
/* Location: ./application/models/Pegawai_model.php */