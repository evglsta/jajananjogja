<?php

class M_user extends CI_model{
	
	function bakpia() {
		return $this->db->get('bakpia');
	}
}
?>