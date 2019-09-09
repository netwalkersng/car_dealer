

<div id="content-wrapper">

<div class="container-fluid">

  <!-- Breadcrumbs-->
  <ol class="breadcrumb">
    <li class="breadcrumb-item">
      <a href="<?php echo base_url('admin');?>">Dashboard</a>
    </li>
    <li class="breadcrumb-item active">All Car Brands</li>
  </ol>
 
  <!-- DataTables Example -->
  <div class="card mb-3">
    <div class="card-header">
      <i class="fas fa-table"></i>
      Package</div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
            <th>#</th>
              <th>Title</th>
              <th>Price (NGN)</th>
              <th>Type</th>
              <th>Expiration Time (Days)</th>
              <th>Featured Time (Days)</th>
              <th>Max Gallery Photos</th>
              <th>Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
            <th>#</th>
              <th>Title</th>
              <th>Price (NGN)</th>
              <th>Type</th>
              <th>Expiration Time (Days)</th>
              <th>Featured Time (Days)</th>
              <th>Max Gallery Photos</th>
              <th>Action</th>
            </tr>
          </tfoot>
          <tbody>
         
            <tr>
            <td>1
            </td>
              <td>Basic</td>
              <td>1000</td>
              <td>10</td>
              <td>5</td>
              <td>5</td>
              <td>5</td>
              <td>
              <div class="dropdown show">
                          <a class="btn btn-secondary dropdown-toggle btn-sm" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fas fa-fw fa-cog"></i>Action
                          </a>

                          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                             <a  class="dropdown-item" href=""><i class="fas fa-fw fa-cog"></i>Edit</a></a>
                              <a class="dropdown-item"  class="dropdown-item" href=""><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
                          </div>
                  </div>
              </td>
            </tr>
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

