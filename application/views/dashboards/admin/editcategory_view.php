

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo site_url('admin');?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Edit Category</li>
        </ol>

        <!-- Page Content -->
        <h1>Edit Category</h1> <hr>  
      

<?php echo form_open_multipart('category/updatecategory');?>
      			<input type="hidden" name="id" value="<?php echo $post->id;?>"/>
				<label><?php echo 'title';?>:</label>
				<input type="text" class="form-control col-md-3" name="title" value="<?php echo(set_value('title')!='')?set_value('title'):$post->title;?>">
				<?php echo form_error('title');?>

				<label><?php echo 'featured img';?>:</label>
			    <div class="">
			        <input type="hidden" name="featured_img" id="site_logo" value="<?php echo get_car_type_icon('name',$post->featured_img);?>">
			        <img class="thumbnail" id="site_logo_preview" src="<?php echo get_car_type_icon('link',$post->featured_img);?>" width="64px">
                    <div class="input-group-prepend">
                   
                </div><input type="file" name="featured_img2" id="" class="input-group-text" >
                
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

      