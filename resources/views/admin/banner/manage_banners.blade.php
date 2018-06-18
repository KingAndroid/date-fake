@include('admin.inc.header')

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Manage Banners
        <small>list of banners</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Banners</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-sm-12">
            @if(Session::has('success'))
                <div class="alert alert-success">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  {{ Session::get('success') }}
                </div>
            @endif

            @if(Session::has('danger'))
                <div class="alert alert-danger">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  {{ Session::get('danger') }}
                </div>
            @endif
        </div>

        <div class="col-md-12">
          <div class="box">
            <div class="box-body">
              @if(sizeof($banners) < 1)
              <h3> No Banners Exists!</h3>
              @else
              <table class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th width="25%" >Title</th>
                    <th width="10%">Banner</th>
                    <!-- <th width="15%">Link</th> -->
                    <th width="15%">Status</th>
                    <th width="60%">Description</th>
                    <th width="10%">Order</th>
                    <th width="80px" class="text-center">Action</th>
                  </tr>
                </thead>
                <tbody>

                  @foreach($banners as $banner)
                    <tr>
                      <td>{!! $banner->title !!}</td>
                      <td>
                        <div class="table-img">
                          <img width="320" height="320" class="img-thumbnail img-responsive" src="{!! url() !!}/public/images/banners/{!! $banner->image !!}" />
                        </div>
                      </td>
                      <!-- <td>{!! $banner->link !!}</td> -->
                      <td>{{ ($banner->featured != 'Y') ? 'Reserved' : 'Primary' }}</td>
                      <td><div class="table-description"><p>{{ strip_tags($banner->sub_title) }}</p></div></td>
                      <td><div class="btn-group table-action pull-right custom"><a class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown"> <i class="glyphicon glyphicon-move"></i> Move <span class="caret"></span> </a>
                          <ul role="menu" class="dropdown-menu">
                            @if($banner->order > 0)
                              <li><a href='banners/{!! $banner->order !!}/Up'> <i class="fa fa-arrow-up"></i> Up</a></li>
                            @endif
                            @if($banner->order < count($banners) - 1)
                              <li><a href='banners/{!! $banner->order !!}/Down'> <i class="fa fa-arrow-down"></i> Down</a></li>
                            @endif
                          </ul>
                        </div></td>
                      <td><div class="btn-group table-action pull-right custom"> <a class="btn btn-danger btn-sm dropdown-toggle" data-toggle="dropdown"> <i class="glyphicon glyphicon-pencil"></i> Action <span class="caret"></span> </a>
                          <ul role="menu" class="dropdown-menu">
                            <li><a href='{{url()}}?banner={{$banner->id}}' target="_blank"> <i class="fa fa-eye"></i> Preview</a></li>
                            <li><a href='banners/{!! $banner->id !!}/edit'> <i class="fa fa-pencil"></i> Edit</a></li>
                            <li><a class="banner-primary-btn" data-id="{{$banner->id}}"> <i class="fa fa-star"></i> Make Primary</a></li>
                            <li>
                                {!! Form::open(array('url' => 'admin/banners/' . $banner->id, 'class' => '')) !!}
                                  {!! Form::hidden('_method', 'DELETE') !!}
                                  {!! Form::button('<i class="fa fa-trash-o"></i> Delete', array('type' => 'submit')) !!}
                               {!! Form::close() !!}
                            </li>
                          </ul>
                        </div></td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
              @endif
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
@include('admin.inc.footer')
</body>
</html>