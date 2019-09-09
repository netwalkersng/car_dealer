

<div id="content-wrapper">

  <div class="container-fluid">

    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="<?php echo base_url('admin');?>">Dashboard</a>
      </li>
      <li class="breadcrumb-item active">All Car Brands</li>
    </ol>
    <a href="<?php echo  base_url('brandmodels/newbrand')?>" class="btn btn-success btn-sm">Add Brand</a>
    <a href="<?php echo  base_url('brandmodels/newmodel')?>" class="btn btn-danger btn-sm">Add Model</a><br><br>
    <!-- DataTables Example -->
    <div class="card mb-3">
      <div class="card-header">
        <i class="fas fa-table"></i>
        Car Brands</div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
              <th>#</th>
                <th>Name</th>
                <th>Type</th>
                <th>Parent</th>
                <th>Action</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
              <th>#</th>
              <th>Name</th>
                <th>Type</th>
                <th>Parent</th>
                <th>Action</th>
              </tr>
            </tfoot>
            <tbody>
            <?php $i=1;foreach($posts as $row):
                $dash = '';
                if($row->type=='model')
                  $dash = '|___';
                ?>
              <tr>
              <td><?php echo $i;?>
              </td>
                <td><?php echo $dash.' '.$row->name;?></td>
                <td><?php echo $row->type;?></td>
                <td><?php echo get_brand_model_name_by_id($row->parent);?></td>
                <td>
                <div class="dropdown show">
                            <a class="btn btn-secondary dropdown-toggle btn-sm" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-fw fa-cog"></i>Action
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                               <a  class="dropdown-item" href="<?php echo base_url('brandmodels/editbrandmodel/'.$row->type.'/'.$row->id);?>"><i class="fas fa-fw fa-cog"></i>Edit</a></a>
                                <a class="dropdown-item"  class="dropdown-item" href="<?php echo base_url('brandmodels/deletebrandmodel/'.$row->id);?>"><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
                            </div>
                    </div>
                </td>
              </tr>
              <?php $i++;endforeach;?> 
            </tbody>
          </table>
        </div>
      </div>
      <!-- <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div> -->
    </div>

    <!-- <p class="small text-center text-muted my-5">
      <em>More table examples coming soon...</em>
    </p> -->

  </div>
  <!-- /.container-fluid -->

