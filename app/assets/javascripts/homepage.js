//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

var INDEX_PAGE={
  // Set listeners on page load
  listeners: function() {
    $('#server-select').on('change', '#server', function() {
      var server=$('#server option:selected').val();
      $('#server-date').html('Now select a date');

      $.ajax({
        type: 'GET',
        url: '/servers/'+server
      }).done(function(dates) {
        var options='<option></option>';
        dates.forEach(function(value,index,array) {
          options+="<option value='"+value+"''>"+value.substring(2,4)+'/'+value.substring(0,2)+'/'+value.substring(4,9)+"</option>";
        });
        $('#date-select').html('<select id="date" autofocus="autofocus">'+options+'</select>');
      });
    });

    $('#date-select').on('change', '#date', function() {
      var server=$('#server option:selected').val(),
          date=$('#date option:selected').val(),
          url='/servers/'+server+'/'+date;
          
      window.open(url,'_blank');
    });
  },

  fetchServers: function() {
    $.get('/servers', function(servers) {
      var options='<option></option>';
      servers.forEach(function(value, index, array) {
        options+="<option value='"+value+"''>"+value.capitalize()+"</option>";
      });
      $('#server-select').html('<select id="server" autofocus="autofocus">'+options+'</select>');
    });
  }
};

$(document).ready(function() {
  String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
  }
  INDEX_PAGE.fetchServers();
  INDEX_PAGE.listeners();
});
