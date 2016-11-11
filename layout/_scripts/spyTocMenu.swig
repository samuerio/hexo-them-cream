<script src="{{ url_for('js/jquery-2.0.3.min.js') }}"></script>
<script src="{{ url_for('js/bootstrap.min.js') }}"></script>
<script src="{{ url_for('js/jquery-spyNavMenu.js') }}"></script>
<script>
      /*
      $('#btnCloseSideBar').click(function(){
        $('.sidebar').css('display', 'none');
        $('#btnOpenSideBar').css('display', 'block');
        $('.main-inner').addClass('main-inner-center');
      });

       $('#btnOpenSideBar').click(function(){
              $('.sidebar').css('display', 'block');
              $('#btnOpenSideBar').css('display', 'none');
              $('.main-inner').removeClass('main-inner-center');
        });
        */

        var navMenu = $('.nav-menu').length && $('.nav-menu').spyNavMenu({
            activeClass:'active',
            fixOffsetClass:'post-toc-fix',
            distinguishLineScale:0,
            events:{
                'scrollNav':function($curNavItem,$navMenu,curNavItemHeight,curNavItemTop){
                    if(!$curNavItem){
                        return;
                    }

                    $('.highlight-title').show();
                    $('.highlight-title').css({
                        //'top':$curNavItem.offset().top-$navMenu.offset().top,
                        'top':curNavItemTop,
                        'height':curNavItemHeight+'px'
                    });
                }
            }
        });
        /*
        navMenu.on('scrollNav',function($curNavItem,$navMenu){
            if(!$curNavItem){
                return;
            }
            $('.highlight-title').show();
            $('.highlight-title').css({
                'top':$curNavItem.offset().top-$navMenu.offset().top,
                'height':$curNavItem.height()+'px'
            });
        });
        */
</script>