


<main>

        
<div data-container><!-- #start of container -->

    <div data-tryLogin-row1><!-- startt of  data-tryLogin-row1-col1 -->
        
        <div class="page-heading-two">
        
        <div>            
            <h5>Recover Password</h5>
        </div>
        <div >
        
            <a href="<?php echo site_url(); ?>">Home</a> / Recover password
        
        </div>
        <div class="clearfix"></div><br>

        
        <?php echo validation_errors();?>
        <?php echo $this->session->flashdata('msg');?>
        <?php echo form_open('account/recoverpassword')?>
        <!-- <div class="alert alert-danger">
          
        </div> -->

       

        <!-- required="" name="email"
        required="" name="password" -->
            <label for="email">Email</label>
            <input type="email" id="email" class="form-control col-lg-4" placeholder="Please Enter your Email" name="user_email" value="<?php echo set_value('user_email')?>"  required=""><br>

            <input type="submit" value="Recover" class="btn btn-primary" > <br>
            Not Registered ? <a href="<?php echo base_url('account/register')?>">Register</a>
        <?php echo form_close()?>
    </div>
        
        

    </div><!-- End of  data-tryLogin-row2 -->
</div> <!-- #End of container -->
   
</main>





