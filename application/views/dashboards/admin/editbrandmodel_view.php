

    <div id="content-wrapper">

      <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo base_url('admin');?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Add Category</li>
        </ol>

        <!-- Page Content -->
        <h1>Add Brand</h1> <hr>  
      
        <?php echo $this->session->flashdata('msg');?>
        <?php echo validation_errors(); ?>
        <?php echo form_open('brandmodels/updatebrandmodel'); ?>          			
				<label><?php echo 'Brand';?>:</label>
        <input type="hidden" name="id" value="<?php echo $editbrandmodel->id;?>" />	
				<input type="text" class="form-control col-md-3" name="name" value="<?php echo $editbrandmodel->id;?>">		
        <input type="hidden" name="type" value="<?php echo $type;?>" />			
				<label><small>Enter Brand Name</small></label>			    
				<div class="clearfix"></div>
				<input type="submit" value="<?php echo 'save';?>" class="btn btn-danger" style="margin-top:10px;" >
			</form>
    
        <hr>
       

      </div>
      <!-- /.container-fluid -->

      