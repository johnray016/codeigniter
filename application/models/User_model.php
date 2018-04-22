<?php 

class User_model extends CI_model {

    public function __construct() {
        $this->load->database();
    }

    public function register($hash_password) {
        $data = array(
            'name' => $this->input->post('name'),
            'email' => $this->input->post('email'),
            'username' => $this->input->post('username'),
            'password' => $hash_password,
            'zipcode' => $this->input->post('zipcode')
        );

        // insert in database
        return $this->db->insert('users', $data);
    }

    public function check_username_exists($username) {
        $query = $this->db->get_where('users', array('username' => $username));

        if(empty($query->row_array())) {
            return true;
        } else {
            return false;
        }
    }

    public function check_email_exists($email) {
        $query = $this->db->get_where('users', array('email' => $email));

        if(empty($query->row_array())) {
            return true;
        } else {
            return false;
        }
    }
}