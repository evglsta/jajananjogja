	<section id="home" class="s-home target-section" data-parallax="scroll" data-image-src="images/hero-bg.jpg" data-natural-width=3000 data-natural-height=2000 data-position-y=center>

        <div class="overlay"></div>
        <div class="shadow-overlay"></div>

        <div class="home-content">

            <div class="row home-content__main">
            	<?php foreach ($query as $row) { ?>
            	<div class="card" style="width: 30%; float: left" align="center">
  					<img class="card-img-top" src="<?php echo base_url('assets/images/bakpia/'.$row->gambar);?>">
  					<div class="card-body">
    					<h4 class="card-title" style="color: white"><?php echo $row->nama;?></h4>
    					<a href="<?php echo base_url('index.php/user/rasa');?>" class="btn btn-primary">Lihat</a>
  					</div>
				</div>
				<?php } ?>
			</div>
		</div>

	</section>
  <a type="button" href="<?php echo base_url('index.php/upload/add');?>" style="color: white">TAMBAH</a>