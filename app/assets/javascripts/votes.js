$(document).ready(function(){
    $('.votes').on('ajax:success', function(e){
        var $target = $(e.target);
        var is_up = $target.hasClass('upvote');
        var $up = $(this).find('.upvote');
        var $down = $(this).find('.downvote');
        var $count = $(this).find('.count');
        var count = parseInt($count.text());


        if(is_up) {
            $up.addClass('has-vote');
            $down.removeClass('has-vote');
            $count.text(count + 1);
        } else {
            $up.removeClass('has-vote');
            $down.addClass('has-vote');
            if (count > 0) {
                $count.text(count - 1);
            }
        }

    });
});