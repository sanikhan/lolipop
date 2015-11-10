# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  subcategories = $('#product_subcategory_id').html()
  $('#product_category_id').change ->
    category jQuery= $('#product_category_id :selected').text()
    options = $(subcategories).filter("optgroup[label='#{category}']").html()
    if options
      $('#product_subcategory_id').html(options)
    else
      $('#product_subcategory_id').empty()



      $(document).on "focus", "[data-provide~='datepicker']", (e) ->
 - $(this).datepicker
 - format: "dd-mm-yyyy"
 - weekStart: 1
 - autoclose: true
