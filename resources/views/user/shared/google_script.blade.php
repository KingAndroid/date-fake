{{--<script src="https://apis.google.com/js/platform.js" async defer></script>--}}
<script src="https://apis.google.com/js/platform.js?onload=initGoogle" async defer></script>
<script type="text/javascript">

    function initGoogle() {
        gapi.load('auth2', function () {
            gapi.auth2.init({
                client_id: "{{config('services.google.client_id')}}"
            });

        });
    }


    function signUpWithGoogle(){
        gapi.auth2.getAuthInstance().signIn().then(function(resp) {
            register(resp.getBasicProfile());
        });
    }

    function loginWithGoogle(){
        gapi.auth2.getAuthInstance().signIn().then(function(resp) {
            attemptGoogleLogin(resp.getAuthResponse());
        });
    }

    function attemptGoogleLogin(user){
        var data = {uri_1 : uri_1, _token : csrf_token, token : user.id_token };

        $.post(
            base_url + '/login_google',
            data,
            function (res) {
                if (typeof (res.id) !== 'undefined') {
                    window.location.reload(true);
                } else {
                    $.alert({
                        title: 'Opps!!',
                        content: 'User not found.',
                    });
                }
            }
        );
        console.log(user);
    }


    function register(details){
        var user = {
            _token: csrf_token,
            username    : details.getGivenName()+' '+details.getFamilyName(),
            password    : '',
            fb_id       : '',
            email       : details.getEmail(),
            firstName   : details.getGivenName(),
            lastName    : details.getFamilyName(),
            city        : '',
            country        : '',
            country_shortname        : '',
            country_code        : '',
            phone        : '',
            zipcode      : '',
            latitude      : '',
            longitude      : ''
        };

        $.post(
            base_url + '/api/signup',
            user,
            function (res) {

                console.log(res);
                if (res.result == 'ok') {
                    setTimeout(function(){
                        window.location.href = window.base_url + '/users/' + res.username + '/about_your_date';

                    }, 2500);

                    $.alert(res.message);
                } else {
                    $.alert(res.message);
                }
            });
    }

</script>