@include('admin.inc.header')

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Users
        <small>list of non-users</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Non-Users</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

          <div class="box">
            <div class="box-body">
              <table class="table table-bordered table-striped table-dt-searchx">
                <thead>
                <tr>
                  <th>Username</th>
                  <th>Real Name</th>
                  <th>Email</th>
                  <th>Verified</th>
                  <th width="80px" class="text-center">Action</th>
                </tr>
                </thead>
                <tbody>

                @foreach($users as $user)

                <tr>
                  <td>
                    <img src="{{$user->photo}}" class="img-circle " width="45" alt="">
                    {{ ' '.$user->username }}
                  </td>
                  <td>{!! $user->firstName !!} {!! $user->lastName !!} </td>
                  <td>{{$user->email}} </td>

                  @if($user->verified == 1)
                  <td><label class=" label label-success">Yes</label></td>
                  @else
                  <td><label class=" label label-danger">No</label></td>
                  @endif
                  <td>
                    <div class="btn-group pull-right table-action custom">
                      <a class="btn btn-danger btn-sm dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-pencil"></i> Action
                        <span class="caret"></span>
                      </a>
                      <ul role="menu" class="dropdown-menu">
                        <li>
                          <a href="#">Apply Free Plan</a>
                        </li>
                      </ul>
                    </div>
                  </td>
                </tr>

                @endforeach

                </tbody>
              </table>

            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

@include('admin.inc.footer')

<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>

</body>
</html>
