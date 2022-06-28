$(function(){
    var num=0;
    $('.slide > div a').eq(num).addClass('active')

    setInterval(function(){
        if(num < 2){
            num++;
        }
        else {
            num=0;
        }
        $('.slide > div a').removeClass('active')
        $('.slide > div a').eq(num).addClass('active')
    },3000)
})
$('.menu li').mouseenter(function(){
    $('.sub-menu, .sub-back').stop().slideDown()
})
$('.menu li').mouseleave(function(){
    $('.sub-menu, .sub-back').stop().slideUp()
})
