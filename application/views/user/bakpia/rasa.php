    <section id="home" class="s-home target-section" data-parallax="scroll" data-image-src="images/hero-bg.jpg" data-natural-width=3000 data-natural-height=2000 data-position-y=center>
        <div class="overlay"></div>
        <div class="shadow-overlay"></div>
        <div class="home-content">
            <div class="row home-content__main">
                <div class="content table-responsive table-full-width">
                  <?php
                                        if(count($query)>0){
                 foreach($query as $row) { ?>
                      <table class="table table-hover table-striped table-bordered">
                          <tbody>
                              <td><img src="<?php echo base_url('assets/images/bakpia/'.$row->gambar);?>"></td>
                              <td>rasa : <?php echo $row->rasa;?>  </td>
                              <td>harga : <?php echo $row->harga;?>  </td>
                              <td>keterangan : <?php echo $row->keterangan;?>  </td>

                              
                          </tbody>
                      </table>
                      <?php
                                            }
                                        } else {
 echo "Belum ada data"; }
                                         ?>
                </div>
            </div>
        </div>
    </section>

    <a type="button" href="<?php echo base_url('index.php/bakpia/add_rasa');?>" style="color: white">TAMBAH</a>