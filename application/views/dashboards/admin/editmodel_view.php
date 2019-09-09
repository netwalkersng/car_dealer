

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
  <h1>Add Model</h1> <hr>  

  <?php echo $this->session->flashdata('msg'); ?>
  <?php echo validation_errors(); ?>
  <form action="<?php echo site_url('brandmodels/editbrandmodel/'.$editbrandmodel->type."/".$editbrandmodel->id);?>" method="post">       			
  <input type="hidden" name="type" value="<?php echo $type;?>" /> 
  <input type="hidden" name="parent" value="<?php echo $editbrandmodel->parent;?>" />    
        <input type="text" class="form-control col-md-3" name="brandmodels" value="<?php echo $editbrandmodel->name;?>">				
        <label><small>Enter Model Name</small></label>			    
        <div class="clearfix"></div>
        <?php if($type=='model'){?>
        <label>Select Type</label>
        <select name="brand" class="form-control col-md-3 brand-<?php echo $type;?>">
	<option ><?php echo get_brand_model_name_by_id($editbrandmodel->parent);?></option>
    <?php 
    
	foreach ($countries->result() as $row) {
		$sel = (set_value('brand')==$row->id)?'selected="selected"':'';
		echo '<option value="'.$row->id.'" '.$sel.'>'.$row->name.'</option>';
	}
	?>
</select>	
<?php }?>
<input type="submit" value="<?php echo 'save';?>" class="btn btn-danger" style="margin-top:10px;" >
      </form>

  <hr>
 

</div>
</form>
<!-- /.container-fluid -->

