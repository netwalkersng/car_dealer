

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo site_url('admin');?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Categories</li>
        </ol>

        <!-- Page Content -->
        <h1>All Car Categories</h1>
    
        <hr>
        <a class="btn btn-danger btn-sm" href="<?php echo site_url('newcategory');?>">New Category</a><br><br>

        <?php echo $this->session->flashdata('msg');?>
        <?php if($posts->num_rows()<=0){?>
        <div class="alert alert-info"><?php echo 'No category';?></div>
        <?php }else{?>
           
        
        <table class="table">
            <thead>
            <tr>
                <th class="numeric">#</th>
                <th class="numeric">title</th>
                <th class="numeric">image</th>
                <th class="numeric">actions</th>
            </tr>
            </thead>
            <?php $i=1;foreach($posts->result() as $row){?>
          
            
            

            <tbody>
                <tr>
                    <td><?php echo $i;?>
                    <input type="hidden" name="ids[]" value="<?php echo $row->id;?>">
                    </td>
                    <td><a href="<?php echo site_url('category/edit/'.$row->id);?>"><?php echo $row->title;?></a></td>
                    <td><?php if($row->parent==0){?>
                      <img class="thumbnail" style="width:50px;margin-bottom:0px;" src="<?php echo get_car_type_icon('link',$row->featured_img);?>" />
                      <?php }else{echo '&nbsp;';}?>
                    <td>
                   
                        <div class="dropdown show">
                            <a class="btn btn-secondary dropdown-toggle btn-sm" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-fw fa-cog"></i>Action
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                               <a  class="dropdown-item" href="<?php echo site_url('category/edit/'.$row->id);?>"><i class="fas fa-fw fa-cog"></i>Edit</a></a>
                                <a class="dropdown-item"  class="dropdown-item" href="<?php echo site_url('category/delete/'.$row->id);?>"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>
           
            <?php $i++;};?> 
            <?php };?>
        </table>

      </div>
      <!-- /.container-fluid -->

      