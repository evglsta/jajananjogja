<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Upload extends CI_Controller
{
    var $limit=10;
	var $offset=10;

    public function __construct() {
        parent::__construct();
        $this->load->model('mupload'); //load model mupload yang berada di folder model
        $this->load->helper(array('url')); //load helper url 

    }

	public function index($page=NULL,$offset='',$key=NULL)
	{
        $data['titel']='Upload CodeIgniter'; //varibel title
        
        $data['query'] = $this->mupload->get_allimage(); //query dari model
        $this->load->view('components/header'); //tampilan awal ketika controller upload di akses
        $this->load->view('user/bakpia/index',$data); //tampilan awal ketika controller upload di akses
        $this->load->view('components/footer'); //tampilan awal ketika controller upload di akse
    }
    public function add() {
	    
        $data['titel']='Form Upload CodeIgniter'; //varibel title
        
        //view yang tampil jika fungsi add diakses pada url
        $this->load->view('user/bakpia/fupload');
       
    }
    public function insert(){
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

                $this->mupload->get_insert($data);
                redirect('upload'); //jika berhasil maka akan ditampilkan view vupload
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