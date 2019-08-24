
 <main>

        
<div data-container><!-- #start of container -->

<div data-tryLogin-row1><!-- startt of  data-tryLogin-row1-col1 -->
    <div><span class="subheading">Home/</span><span class="heading">Login</span></div>
    <div data-container>
    <div data-row1-col1>
        Login to your account

        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas urna ut enim semper, 
        tempus adipiscing nisi ornare. Vivamus ut rdum urna, at aliquam nulla. Fusce laoreet metus 
        eget nisl varius posuere. Aliquam sapien augue, semper ut magna ut, rutrum malesuada sapien.

        Your data are safe with us

        Mauris ac dui consectetur, condimentum est ac, tristique velit. Phasellus varius volutpat sem 
        quis semper. Nullam id egestas purus, eget rhoncus erat. Aenean at nullaortis. In semper fermentum nibh, 
        in congue urna sollicitudin eu. Curaagna. Proin egestas lorem vel tincidunt interdum. Integer aliquet varius 
        tellus, eu feugiat justo vestibulum id. Morbi ultrices ultrices . Nullam rutrum sem ante, ut eleifend purus porttitor in.
    </div><!-- End of  data-tryLogin-row1-col1 -->

    <div data-row1-co2><!-- startt of  data-tryLogin-row1-col2 -->
        <h4>Login to your account</h4>
        <hr>
        <?php echo validation_errors();?>
        <?php echo form_open('account')?>
        <!-- <div class="alert alert-danger">
          
        </div> -->

      

        <!-- required="" name="email"
        required="" name="password" -->
            <label for="email">Email</label>
            <input type="email" id="email" class="form-control" placeholder="Please Enter your Email" name="email" value="<?php echo set_value('email')?>"  required="">

            <label for="password"  required="" >Password</label>
            <input type="password" maxlength="16" id="password" class="form-control"  name="password" required="" value="<?php echo set_value('password')?>"><br>
            
            <input type="submit" value="Sign In" class="btn btn-primary" > <br>
            <a href="<?php echo base_url('account/recoverpassword')?>">Forgot Password</a> or <a href="<?php echo base_url('account/register')?>">Register</a>
        <?php echo form_close()?>
    </div>

</div><!-- End of  data-tryLogin-row2 -->
</div> <!-- #End of container -->
   
</main>

