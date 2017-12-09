<?php
class M_coklat extends CI_Model {
    var $tabel = 'coklat'; //buat variabel tabel
    var $table = 'rasa_coklat'; 

    function __construct() {
        parent::__construct();
    }
    
    //fungsi untuk menampilkan semua data dari tabel database
	function get_allimage() {
        $this->db->from($this->tabel);
		$query = $this->db->get();

        //cek apakah ada data
        if ($query->num_rows() > 0) {
            return $query->result();
        }
	}

    //fungsi insert ke database
    function get_insert($data){
       $this->db->insert($this->tabel, $data);
       return TRUE;
    }

    function get_allimagerasa() {
        $this->db->from($this->table);
        $query = $this->db->get();

        //cek apakah ada data
        if ($query->num_rows() > 0) {
            return $query->result();
        }
    }

    //fungsi insert ke database
    function get_insertrasa($data){
       $this->db->insert($this->table, $data);
       return TRUE;
    }
}
?>