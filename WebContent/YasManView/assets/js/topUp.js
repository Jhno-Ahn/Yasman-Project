window.addEventListener("load", function () {
    setTimeout(function () {
        document.querySelector('body').classList.add('loaded');
    }, 300);
});

// 챗봇 스크립트
// 위로 가기
$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 600) {
            $('.ScrollButton').fadeIn();
        } else {
            $('.ScrollButton').fadeOut();
        }
    });

    $("#TopButton").click(function () {
        $('html').animate({ scrollTop: 0 }, 600);
    });

    $("#BottomButton").click(function () {
        $('html').animate({ scrollTop: ($('#footer').offset().top) }, 600);
    });
});

$(function () {
    $("#chatbot").click(function () {
        alert("Coming soon...🛠");
    });
});

$(function(){
    $(".add-later").click(function(){
        alert("Coming soon...🛠");
    });      
});