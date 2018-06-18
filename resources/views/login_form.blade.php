@extends('master')

@section('form_area')
    <div class="col-md-6 formStyle">
        <div class="advertise-here">
            <h2 style="padding-left: 30px">Login</h2>
            <div class="boxStyle">
                <div class="row">
                    <div id="errorMessageLog"></div>
                    <div>
                        {!! Form::open(array('url' => 'login', 'class' => 'form', 'id' => 'login-nav')) !!}
                        <div class="form-group">
                            <label class="sr-only" for="username">Username</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                        <!-- <div class="help-block text-right"><a href="{!! url() !!}/forgotPassword">Forget the password ?</a></div> -->
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="remember" name="check" checked> keep me logged-in
                            </label>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                            <div class="help-block text-right">
                                <a href="{!! url() !!}/forgotPassword">Forget the password ?</a>
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

<style>
    .formStyle {
        margin-left: 25%;
        margin-top: 30px;
    }
    .boxStyle {
        padding-top: 30px;
        padding-left: 50px;
        padding-right: 50px;
        padding-bottom : 30px;
        background-color : #efefef;
    }
</style>