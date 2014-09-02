$(document).ready(function() {
  $(function() {
    $('a.paginator').click( function() {
      var id = ".group_" + $(this).html()
      console.log(id)
      $('.slice').hide()
      $(id).removeClass('hidden').show()
    })

  })
  $(function() {
    $(".search_patients").click( function() {
        console.log("helppppppp");
        console.log($('.patient_search').val())
        $.ajax({
          url: "/patients",
          dataType: "script",
          type: "GET",
          data: {q: $('.patient_search').val()}
        })
      })
  })
  $(function() {
    $(".search_hospital_patients").click( function() {
        console.log("helppppppp");
        console.log($('.hospital_patient_search').val())
        $.ajax({
          url: "/hospitals/:hospital_id/patients",
          dataType: "script",
          type: "GET",
          data: {q: $('.hospital_patient_search').val()}
        })
      })
  })
  $(function() {
    var empty;
      $('form > input').keyup(function() {
          var empty = false;
          $('form > input').each(function() {
              if ($(this).val() == '') {
                  empty = true;
              }
          });

          if (empty) {
              $('.register').attr('disabled', 'disabled');
          } else {
              $('.register').removeAttr('disabled');
          }
      });
  })
})