<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bakpia extends CI_Controller
{
    var $limit=10;
	var $offset=10;

    function __construct() {
        parent::__construct();
        $this->load->model('m_bakpia');
        $this->load->helper(array('url'));
    }

	function index($page=NULL,$offset='',$key=NULL)
	{       
        $data['query'] = $this->m_bakpia->get_allimage();
        $this->load->view('components/header');
        $this->load->view('user/bakpia/index',$data);
        $this->load->view('components/footer');
    }

    function add()
    {
	    $this->load->view('user/bakpia/fupload');   
    }

    function add_rasa()
    {
        $this->load->view('user/fupload');
       
    }
    
    function insert(){
        $this->load->library('upload');
        $nmfile = "file_".time(); //nama file saya beri nama langsung dan diikuti fungsi time
        $config['upload_path'] = './assets/images/bakpia/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['max_size'] = '2048'; //maksimum besar file 2M
        $config['max_width']  = '1288'; //lebar maksimum 1288 px
        $config['max_height']  = '768'; //tinggi maksimu 768 px
        $config['file_name'] = $nmfile; //nama yang terupload nantinya

        $this->upload->initialize($config);
        
        if($_FILES['gambar']['name'])
        {
            if ($this->upload->do_upload('gambar'))
            {
                $gbr = $this->upload->data();
                $data = array(
                    'gambar' =>$gbr['file_name'],
                    'nama' =>$this->input->post('nama')                
                );

                $this->m_bakpia->get_insert($data);
                redirect('upload'); //jika berhasil maka akan ditampilkan view vupload
            }else{
                echo "GAGAL";
                redirect('upload/add'); //jika gagal maka akan ditampilkan form upload
            }
        }
    }
     public function insert_rasa(){
        $this->load->library('upload');
        $nmfile = "file_".time(); //nama file saya beri nama langsung dan diikuti fungsi time
        $config['upload_path'] = './assets/images/bakpia/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['max_size'] = '2048'; //maksimum besar file 2M
        $config['max_width']  = '1288'; //lebar maksimum 1288 px
        $config['max_height']  = '768'; //tinggi maksimu 768 px
        $config['file_name'] = $nmfile; //nama yang terupload nantinya

        $this->upload->initialize($config);
        
        if($_FILES['gambar']['name'])
        {
            if ($this->upload->do_upload('gambar'))
            {
                $gbr = $this->upload->data();
                $data = array(
                    'id_bakpia' =>$this->input->post('id_bakpia'),
                    'rasa' =>$this->input->post('rasa'),
                    'harga' =>$this->input->post('harga'),  
                    'keterangan' =>$this->input->post('keterangan'), 
                    'gambar' =>$gbr['file_name']                              
                );

                $this->m_bakpia->get_insertrasa($data);
                redirect('user/rasa'); //jika berhasil maka akan ditampilkan view vupload
            }else{
                echo "GAGAL";
                redirect('upload/add'); //jika gagal maka akan ditampilkan form upload
            }
        }
    }
}

/* End of file upload.php */
/* Location: ./application/controllers/upload.php */
?>