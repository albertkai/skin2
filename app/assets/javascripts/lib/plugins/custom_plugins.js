/* Sexy Modal */

//For fully dynamic sites everything is organized as Jquery plugins.
//On every view initialize, this plugins should be reinitialized

$.fn.modal = function () {
    var $trigger = $('._modal-open'),
        $close = $('.modal .close'),
        $all_modals = $(this),
        $overlay = $('#overlay');
    $('body').on('click', '._modal-open', function (e) {
        modalOpen(e);
    });
    $('.modal .close, #overlay').on('click', function (e) {
        modalClose(e);
    });

$('body').on('modal:close', function () {
    modalClose();
});

var modalClose = function (e) {
    $all_modals.removeClass('_opened');
    $all_modals.addClass('_closed');
    setTimeout(function () {
        console.log($all_modals);
        $all_modals.find('.body').empty();
    }, 500);
    $('#overlay').removeClass('_show');
    console.log('closed');
};

var modalOpen = function (e) {
    var target = $(e.target).data('target'),
        $modal = $('#' + target);
    $modal.removeClass('_closed');
    $modal.addClass('_opened');
    $('#overlay').addClass('_show');
    console.log('Modal is opened');
    if ($modal.data('tmpl') === true) {
        var html = $('#_' + target).html();
        console.log(html)
        $modal.find('.body').append(html);
    } else if (typeof $modal.data('fetch') !== 'undefined') {
        var param = $(e.target).data('param');
        var path = $modal.data('fetch').replace(':param', param);
        var html = $('#_' + target).html();
        $.get(path, function (data) {
            var markup = _.template(html, data);
            $modal.find('.body').append(markup);
        });
    }
    setTimeout(function () {
        $('body').trigger({
            type: "modal:open",
            message: "invalid form submission attempts."
        });
    }, 100);
    }
};

/* Sexy helpers */

var helpers = function(){

//Switchers

   if($('.radio').length > 0){
       console.log('Swithers init');
       var $radio = $('.radio');
       $('.radio:first').addClass('_active');
       $('body').on('click', '.radio', function(e){
            switcher(e)
       });
       var switcher = function(e){
          $('.radio').removeClass('_active');
          $(e.target).addClass('_active');
       };
   }

};


/* Sexy dropdown */

$.fn.dropdown = function(){
        console.log('Dropdown init');
        var $cont = $('.dropdown'),
            $current = $('.dropdown .current'),
            $input = $('.dropdown input[type="hidden"]'),
            $dropdown = $('.dropdown ul');

        (function(){
            $('.dropdown ul li:first').addClass('_active');
            $('.dropdown').each(function(){
                var name = $(this).attr('id');
                $(this).find('input[type="hidden"]').attr('name', name);
            });
        })();

        $cont.on('mouseenter', function(e){
            console.log('dropdown fired');
            showDropdown(e);
        });
        $cont.on('mouseleave', function(e){
            hideDropdown(e);
        });
        $dropdown.on('click', function(e){
            changeValue(e);
        });

        var showDropdown = function(e){
            $(e.target).closest('.dropdown').find('ul').addClass('_shown');
        };

        var hideDropdown = function(){
            $cont.find('ul').removeClass('_shown');
        };

        var changeValue = function(e){
            var val = $(e.target).closest('li').data('value');
            var html = $(e.target).closest('li').html();
            $('body').find('.dropdown ul li').removeClass('_active');
            $(e.target).addClass('_active');
            $input.val(val);
            $(e.target).closest('ul').siblings('.current').find('._content').html(html);
            hideDropdown();
            $(e.target).closest('ul').siblings('input[type="hidden"]').val(val);
            $(e.target).parents('.dropdown').data('value', val);
            $(e.target).parents('.dropdown').trigger('dropdown:change');
        }
};