

<div id="content-wrapper">

  <div class="container-fluid">

    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="<?php echo site_url('user');?>">Home</a>
      </li>
      <li class="breadcrumb-item active">Change Password</li>
    </ol>

    <!-- Page Content -->
    <h1>Change Password</h1>

    <hr>
    <?php echo validation_errors();?>
    <?php echo form_open('admin/update_password')?>
    <?php if($this->session->userdata('recovery') !='yes'){?> 
    <label for="current_password">Current Password</label>
    <input type="text" id="current_password" class="form-control col-lg-4" name="current_password"  <?php echo set_value('current_password')?>>
    <?php }?>
    
    <label for="new_password">New Password</label>
    <input type="password" id="new_password" placeholder="Please chose a password" class="form-control col-lg-4" name="new_password"  <?php echo set_value('new_password')?>>
    <label for="password">New Password Again</label>
    <input type="text" id="re_password"  placeholder="Please enter password again" class="form-control col-lg-4" name="re_password" <?php echo set_value('re_password')?>><br>
    
    
    
    <input type="submit" value="Submit" class="btn btn-primary">
   </form>

  </div>
  <!-- /.container-fluid -->

  