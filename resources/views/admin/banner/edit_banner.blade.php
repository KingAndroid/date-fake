@include('admin.inc.header')

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Manage Banners
        <small>edit banner</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Banner Images</a></li>
        <li class="active">Edit</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          
          <div class="box">
            <div class="box-body">

              {!! Form::open
                (
                  array(
                  'url'     => 'admin/banners/'.$banner->id,
                  'method'  => 'put',
                  'files'   => true,
                  'role'    => 'form',
                  'id'    => 'form2'
                  )
                )
              !!}
                <div class="form-horizontal">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Title <span class="symbol required"></span></label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control"   placeholder="Enter your title" name="title" value = "{!! $banner->title !!}" required >
                    </div>
                  </div>
                  <div class="form-group hidden">
                    <label class="col-sm-2 control-label">Link <span class="symbol required"></span></label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="" value="www.exaple.com" name="link" value = "{!! $banner->link !!}">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Upload Banner <span class="symbol required"></span></label>
                    <div class="col-sm-9">
                      <div class="file-upload">
                          <input type="file" name="uploadpicture" accept="image/*"  class="file-input ImgeInput" id="uploadpicture"  />
                          {!! HTML::image('public/images/uploadvid.png', 'alt', array( 'class' => 'targetImage')) !!}
                   </div>
                    
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">Description</label>
                    <div class="col-sm-9">
                      <!--<textarea class="textarea" name="sub_title" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                        {!! $banner->sub_title !!}
                      </textarea>-->
                      <textarea  class="form-control summernote_" name="sub_title">{!! $banner->sub_title !!}</textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <input type="submit" value="Submit" class="btn btn-success">
                      <input type="button" value="Cancel" class="btn btn-danger" onclick="window.history.back()">
                    </div>
                  </div>
                </div>
              {!! Form::close() !!}

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