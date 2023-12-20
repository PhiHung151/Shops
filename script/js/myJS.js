function responsive(){
    $('.per-box').height($('.per-box').width()*1.5);
    $('.img-avatarpr').height($('.img-avatarpr').width());
    $('.img-avatarpr1').height($('.img-avatarpr1').width()*0.65);
    $('.carousel').height($('.carousel').width() /3);
    if($(window).width() < 760){
        document.getElementById('cart-text').innerHTML ='';
        document.getElementById('icon-user').innerHTML ='<i class="fas fa-user"></i>';
    }
    if($(window).width() > 760){
        document.getElementById('cart-text').innerHTML ='Giỏ hàng';
    }
    if($(window).width() < 500){
        $('.name-pr').css({'font-size':'12px'});
    }
    else if($(window).width() > 500){
        $('.name-pr').css({'font-size':'16px'});
    }
}