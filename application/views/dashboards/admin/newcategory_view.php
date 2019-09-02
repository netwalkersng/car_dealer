

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo site_url('admin');?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Add Category</li>
        </ol>

        <!-- Page Content -->
        <h1>Add Category</h1> <hr>  
      

<?php echo form_open_multipart('category/addcategory');?>
      			
				<label><?php echo 'title';?>:</label>
				<input type="text" class="form-control col-md-3" name="title" value="">
				<?php echo form_error('title');?>

				<label><?php echo 'featured image';?>:</label>
			    <div class="">
                    <div class="input-group-prepend">
                </div><input type="file" name="featured_img" id="" class="input-group-text" >
                
			        <!-- <iframe src="<?php echo site_url('admin/category/featuredimguploader');?>" style="border:0;margin:0;padding:0;height:50px;"></iframe> -->
			        <div class="clearfix"></div>
			        <span id="upload-error"><?php echo form_error('featured_img'); ?></span>
			    </div>

				<div class="clearfix"></div>
				<input type="submit" value="<?php echo 'save';?>" class="btn btn-danger" style="margin-top:10px;" >
				

			</form>
    
        <hr>
       

      </div>
      <!-- /.container-fluid -->

      