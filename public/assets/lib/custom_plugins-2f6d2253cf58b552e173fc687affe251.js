$(function(){if($(".modal").length>0&&$("._modal-open").length>0){var o=($("._modal-open"),$(".modal .close"),$(".modal"));$("#overlay"),$("body").on("click","._modal-open",function(o){a(o)}),$(".modal .close, #overlay").on("click",function(o){e(o)})}var e=function(){o.removeClass("_opened"),o.addClass("_closed"),setTimeout(function(){o.find(".body").empty()},500),$("#overlay").removeClass("_show"),console.log("closed")},a=function(o){var e=$(o.target).data("target"),a=$("#"+e);if(a.removeClass("_closed"),a.addClass("_opened"),$("#overlay").addClass("_show"),console.log("Modal is opened"),a.data("tmpl")===!0){var l=$("#_"+e).html();console.log(l),a.find(".body").append(l)}else if("undefined"!=typeof a.data("fetch")){var d=$(o.target).data("param"),n=a.data("fetch").replace(":param",d),l=$("#_"+e).html();$.get(n,function(o){var e=_.template(l,o);a.find(".body").append(e)})}}});