<head>
    <title><?=$titel?></title> <!-- variabel diambil dari controller -->
    
    <link href="<?=base_url()?>assets/css/bootstrap.min.css" rel="stylesheet"> <!-- Bootstrap core CSS -->
    <link href="<?=base_url()?>assets/css/style.css" rel="stylesheet"> <!-- Custom styles for this template -->
<style>

    body{
        margin:20px 10%;
    }
</style>
</head>

<div class="container">
      <!-- Main component for a primary marketing message or call to action -->
<div class="panel panel-default">
  <div class="panel-heading"><b>Form Upload Image</b></div>
  <div class="panel-body">
     <form action="<?php echo base_url('index.php/geplak/insert');?>" method="post" enctype="multipart/form-data">
       <table class="table table-striped">
         <tr>
          <td style="width:15%;">File Foto</td>
          <td>
            <div class="col-sm-6">
                <input type="file" name="gambar" class="form-control">
            </div>
            </td>
         </tr>
         <tr>
          <td style="width:15%;">Nama</td>
          <td>
            <div class="col-sm-10">
                 <input type="text" name="nama" class="form-control">
            </div>
            </td>
         </tr>
         <tr>
          <td colspan="2">
            <input type="submit" class="btn btn-success" value="Simpan">
            <button type="reset" class="btn btn-default">Batal</button>
          </td>
         </tr>
       </table>
     </form>
    </div>
   </div>    <!-- /panel -->
 </div> <!-- /container -->