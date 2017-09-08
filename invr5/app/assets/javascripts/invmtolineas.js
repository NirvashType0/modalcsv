document.addEventListener("turbolinks:load", function() {
    $('#invmtolineas').on('click','.pagination a', function() {
      $.getScript(this.href);
      return false;
    });
    
    $('#searchfrm input').keyup(function () {
        $.get($('#searchfrm').attr('action'), $('#searchfrm').serialize(), null, 'script');
        return false;
    });
});