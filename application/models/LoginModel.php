<?php
class LoginModel extends CI_Model {
    // Define the table name
    private $table = 'tbl_login';

    public function __construct() {
        parent::__construct();
        // Load the database library if it's not autoloaded in your config/autoload.php file
        // $this->load->database();
    }

    public function check_login($username, $password) {
        // Query the database to check if the username and password match
        $query = $this->db->get_where($this->table, array('username' => $username, 'password' => $password));
        
        // If a row with the provided username and password exists, return the user data
        if ($query->num_rows() === 1) {
            return $query->row();
        }
        
        // If no matching record is found, return false
        return false;
    }
}
