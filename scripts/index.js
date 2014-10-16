/**
    @author Mustapha Taiwo
*/
jQuery(function($) {
        $('#loginform').submit(function (e) {
            e.preventDefault();
            $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login...').fadeIn(1000);
            this.timer = setTimeout(function () {
                $.ajax({
                    type: 'POST',
                    url: 'LoginServlet',
                    secureuri: true,
                    data: 'username=' + encodeURIComponent($('#username').val()) + '&password=' + encodeURIComponent($('#password').val()),
                    cache: false,
                    success: function (msg) {
                        if ($.trim(msg).toString() == "ERROR" || msg == "") {
                            $("#msgbox").fadeTo(200, 0.1, function () {
                                $(this).html('Sorry, Wrong Combination Of Username And Password.').removeClass().addClass('myinfo').fadeTo(900, 1);
                            });
                        }
                        else {
                            $("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900, 1,
                            function () {
                                var id = $.trim(msg).toString();
                                if(('localStorage' in window) && window['localStorage'] !== null){
                                    window.localStorage.setItem('token', id);
                                }
                                document.location = 'AccountService?userId=' + encodeURIComponent(id);
                            });
                        }
                    }
                });
            }, 200)
            return false;
        });

        $(".trigger").click(function(){
            $(".welcome-panel").toggle("fast");
            $(this).toggleClass("active");
            return false;
        });
    }
);