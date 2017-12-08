    <section id="contact" class="s-contact">

        <div class="overlay"></div>
        <div class="contact__line"></div>

        <div class="row section-header" data-aos="fade-up">
            <div class="col-full">
                <h3 class="subhead">Contact Us</h3>
                <h1 class="display-2 display-2--light">Reach out for a new project or just say hello</h1>
            </div>
        </div>

        <div class="row contact-content" data-aos="fade-up">
            <div class="contact-primary">
                <h3 class="h6">LOG IN</h3>
                
                <form name="login" id="login" method="post" action="<?php echo base_url('index.php/user');?>">
                    <fieldset>
                        <div class="form-field">
                            <input name="username" type="text" class="full-width" placeholder="Username" required oninvalid="this.setCustomValidity('Please fill out this field.')" oninput="setCustomValidity('')">
                        </div>
                        <div class="form-field">
                            <input name="password" type="password" class="full-width" placeholder="Password" required oninvalid="this.setCustomValidity('Please fill out this field.')" oninput="setCustomValidity('')">
                        </div>
                    </fieldset>

                    <button type="submit" class="btn btn-info">Login</button>
                </form>
               
                <!-- <!-- contact-warning -->
                <!-- <div class="message-warning">
                    Something went wrong. Please try again.
                </div>  -->
            
                <!-- contact-success
                <div class="message-success">
                    Your message was sent, thank you!<br>
                </div> -->
            </div> <!-- end contact-primary -->
        </div> <!-- end contact-content -->
    </section> <!-- end s-contact -->