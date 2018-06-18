@include('admin.inc.header')

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Demographic Report
        {{--  <small>list of users</small>  --}}
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Demographic Report</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

          {{--  <div class="box">
            <div class="box-body">


            </div>
          </div>  --}}


          <!-- Map box -->
          <div class="box box-solid bg-light-blue-gradient" >
            <div class="box-header">
              <!-- tools box -->
              <div class="pull-right box-tools">
                <!-- <button type="button" class="btn btn-primary btn-sm daterange pull-right" data-toggle="tooltip"
                        title="Date range">
                  <i class="fa fa-calendar"></i></button> -->
                <button type="button" class="btn btn-primary btn-sm pull-right" data-widget="collapse"
                        data-toggle="tooltip" title="Collapse" style="margin-right: 5px;">
                  <i class="fa fa-minus"></i></button>
              </div>
              <!-- /. tools -->

              {{--  <i class="fa fa-map-marker"></i>

              <h3 class="box-title">
                Visitors
              </h3>  --}}
            </div>
            <div class="box-body" style="height: 800px;">
              <div id="world-map" style="height: 100%; width: 500px%;"></div>
            </div>
            <!-- /.box-body-->
            {{--  <div class="box-footer no-border">
              <div class="row">
                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                  <div id="sparkline-1"></div>
                  <div class="knob-label">Visitors</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                  <div id="sparkline-2"></div>
                  <div class="knob-label">Online</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-4 text-center">
                  <div id="sparkline-3"></div>
                  <div class="knob-label">Exists</div>
                </div>
                <!-- ./col -->
              </div>
              <!-- /.row -->
            </div>  --}}
          </div>
          <!-- /.box -->


        </div>
      </div>
    </section>
  </div>

@include('admin.inc.footer')

</body>
</html>
