<script src="{{ url_for('js/jquery-2.0.3.min.js') }}"></script>
<script>
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
</script>