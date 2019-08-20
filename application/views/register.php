
 <main>

        
<div data-container><!-- #start of container -->

<div data-tryLogin-row1><!-- startt of  data-tryLogin-row1-col1 -->
    <div><span class="subheading"><a href="<?php echo site_url(); ?>" class="subheading">Home</a>/</span><span class="heading">Register</span></div>
    <div data-container>
    <div data-row1-col1>
        <h4>Register for New Account</h4>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean egestas urna ut enim semper, 
        tempus adipiscing nisi ornare. Vivamus ut rdum urna, at aliquam nulla. Fusce laoreet metus 
        eget nisl varius posuere. Aliquam sapien augue, semper ut magna ut, rutrum malesuada sapien.

        <h4>Your data will be safe with us</h4>

        Mauris ac dui consectetur, condimentum est ac, tristique velit. Phasellus varius volutpat sem 
        quis semper. Nullam id egestas purus, eget rhoncus erat. Aenean at nullaortis. In semper fermentum nibh, 
        in congue urna sollicitudin eu. Curaagna. Proin egestas lorem vel tincidunt interdum. Integer aliquet varius 
        tellus, eu feugiat justo vestibulum id. Morbi ultrices ultrices . Nullam rutrum sem ante, ut eleifend purus porttitor in.
    </div><!-- End of  data-tryLogin-row1-col1 -->

    <div data-row1-co2><!-- startt of  data-tryLogin-row1-col2 -->
        <h4>Login to your account</h4>
        <hr>
        <?php echo validation_errors();?>
        <?php echo form_open('account/register')?>
        <!-- <div class="alert alert-danger">
          
        </div> -->

       

        <!-- required="" name="email"
        required="" name="password" -->

            <label for="first_name">First Name <span class="required">*</span></label>
            <input type="first_name" id="first_name" class="form-control" placeholder="Please enter Last name" name="first_name" value="<?php echo set_value('first_name')?>"  required="">

            <label for="last_name"   >Last Name <span class="required" >*</span></label>
            <input type="text" required="" maxlength="40" id="last_name" class="form-control"  placeholder="Please enter Last name" name="last_name"  value="<?php echo set_value('last_name')?>">        
            <label for="email"  required="" >Email <span class="required">*</span></label>
            <input type="email" maxlength="50" id="email" class="form-control"  placeholder="Your e-mail please" name="email" required="" value="<?php echo set_value('email')?>">
            <label for="gender"   >Gender</label>
            <select name="gender" id="gender"class="form-control">
            <option value="select.." <?php echo set_select('gender', 'select..', TRUE)?>>select..</option>
            <option value="Male" <?php echo  set_select('gender', 'Male')?>>Male</option>
            <option value="Female" <?php echo set_select('gender', 'female')?>>Female</option>      
            </select>

            <label for="company_name"  required="" >Company <span class="required">*</span></label>
            <input type="text" maxlength="50" id="company_name" class="form-control"  placeholder="Your Business Name" name="company_name" required="" value="<?php echo set_value('company_name')?>">
            <label for="password" >Password <span class="required">*</span></label>
            <input type="password" maxlength="12" id="password" class="form-control"  placeholder="Please choese a password" name="password" required="" value="<?php echo set_value('password')?>">
            <label for="password_again"  >Password Again<span class="required">*</span></label>
            <input type="password" maxlength="12" id="password_again" class="form-control"  placeholder="Enter your password again" name="password_again" required="" value="<?php echo set_value('password_again')?>"><br>
            <input type="submit" value="Sign In" class="btn btn-primary" > <br>
             Already have an account ? <a href="<?php echo base_url('account')?>">Login Instaed</a>
        <?php echo form_close()?>
    </div>

</div><!-- End of  data-tryLogin-row2 -->
</div> <!-- #End of container -->
   
</main>

