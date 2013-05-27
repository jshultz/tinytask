/**
 * Created with JetBrains RubyMine.
 * User: jason
 * Date: 5/21/13
 * Time: 5:37 PM
 * To change this template use File | Settings | File Templates.
 */


//$('form').submit(function() {
//    var valuesToSubmit = $(this).serialize();
//    $.ajax({
//        type: 'post',
//        url: $(this).attr('action'), //sumbits it to the given url of the form
//        data: valuesToSubmit,
//        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
//    }).success(function(json){
//            //act on result.
//              parent.jQuery('#cboxClose').click();
//        });
//    return false; // prevents normal behaviour
//});

jQuery.ajaxSetup({
    'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

$(document).ready(function() {
    /* Activating Best In Place */
    jQuery(".best_in_place").best_in_place();
});

$('#projects').masonry({
    itemSelector: '.project',
    isAnimated: !Modernizr.csstransitions,
// set columnWidth a fraction of the container width
    columnWidth: function( containerWidth ) {
        return containerWidth / 5;
    }
});
