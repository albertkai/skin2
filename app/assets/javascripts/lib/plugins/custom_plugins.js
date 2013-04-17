/* Sexy Modal */

$(function(){
    if($('.modal').length > 0 && $('._modal-open').length > 0){
        var $trigger = $('._modal-open'),
            $close = $('.modal .close'),
            $all_modals = $('.modal'),
            $overlay = $('#overlay');
        $('body').on('click', '._modal-open', function(e){
            modalOpen(e);
        });
        $('.modal .close, #overlay').on('click', function(e){
            modalClose(e);
        });

    }

    var modalClose = function(e){
        $all_modals.removeClass('_opened');
        $all_modals.addClass('_closed');
        setTimeout(function(){
            $all_modals.find('.body').empty();
        }, 500);
        $('#overlay').removeClass('_show');
        console.log('closed');
    };

    var modalOpen = function(e){
        var target = $(e.target).data('target'),
            $modal = $('#' + target);
        $modal.removeClass('_closed');
        $modal.addClass('_opened');
        $('#overlay').addClass('_show');
        console.log('Modal is opened');
        if($modal.data('tmpl') === true){
            var html = $('#_' + target).html();
            console.log(html)
            $modal.find('.body').append(html);
        }else if(typeof $modal.data('fetch') !== 'undefined'){
            var param = $(e.target).data('param');
            var path = $modal.data('fetch').replace(':param', param);
            var html = $('#_' + target).html();
            $.get(path, function(data){
                var markup = _.template(html, data);
                $modal.find('.body').append(markup);
            });
        }
    };
});