$(document).ready(function(){"use strict";$.each($("td.qty input"),function(e,t){$(t).on("change",function(){var e="#"+$(this).attr("id").replace("_quantity","_id");$.post("/admin/orders/"+$("input#order_number").val()+"/line_items/"+$(e).val(),{_method:"put","line_item[quantity]":$(this).val()},function(e){$("#order-form-wrapper").html(e.responseText)})})})});