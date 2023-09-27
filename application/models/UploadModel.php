<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UploadModel extends CI_Model {

    public function insert_file($id_pegawai, $file_path) {
        // Prepare the data for the update
        $data = array(
            'file' => $file_path,
        );
    
        // Define the WHERE clause to target the specific 'id_pegawai'
        $this->db->where('id_pegawai', $id_pegawai);
    
        // Update the 'tbl_pegawai' record with the new file path
        if ($this->db->update('tbl_pegawai', $data)) {
            return true; // Successful update
        } else {
            // Handle update error
            $error = $this->db->error();
            log_message('error', 'Database error: ' . $error['message']);
            return false;
        }
    }
    
}