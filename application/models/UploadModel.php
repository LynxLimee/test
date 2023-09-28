<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UploadModel extends CI_Model {

    public function insert_file_img($id_pegawai, $file_path) {
        // Prepare the data for the update
        $data = array(
            'file_img' => $file_path,
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

    public function insert_file_file($id_pegawai, $file_path) {
        // Prepare the data for the update
        $data = array(
            'file_file' => $file_path,
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
    
    public function delete_img($id_pegawai) {
        // Define the WHERE clause to target the specific 'id_pegawai'
        $this->db->where('id_pegawai', $id_pegawai);
    
        // Set the 'file_img' and 'file_file' fields to NULL or an empty value to delete the file paths
        $data = array(
            'file_img' => null, // or an empty string if your schema allows it
        );
    
        // Update the 'tbl_pegawai' record to delete the file paths
        if ($this->db->update('tbl_pegawai', $data)) {
            return true; // Successful update
        } else {
            // Handle update error
            $error = $this->db->error();
            log_message('error', 'Database error: ' . $error['message']);
            return false;
        }
    }

    public function delete_file($id_pegawai) {
        // Define the WHERE clause to target the specific 'id_pegawai'
        $this->db->where('id_pegawai', $id_pegawai);
    
        // Set the 'file_img' and 'file_file' fields to NULL or an empty value to delete the file paths
        $data = array(
            'file_file' => null, // or an empty string if your schema allows it
        );
    
        // Update the 'tbl_pegawai' record to delete the file paths
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