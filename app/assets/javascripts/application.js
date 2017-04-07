// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree ../../../vendor/assets/javascripts/.
//= require js/lightbox
//= require_tree .
//skipprの初期化
$(function(){
$("document").ready(function(){
	$("#theTarget1").skippr();
	$("#theTarget2").skippr();
});

//オプションを指定してskipprの実行
$("#theTarget1").skippr({
	//スライドショーの変化（”fade" or "slide")
	transition:'fade',
	//変化に関わる時間（ミリ秒）
	speed: 500,
	//easingの種類
	easing:'easeOutQuart',
	//ナビゲーションの形（"block" or "bubble")
	navType: 'bubble',
	//子要素の種類("div" or "img")
	childrenElementType: 'div',
	//ナビゲーションの矢印の表示(trueで表示)
	arrows: true,
	//スライドショーの自動再生(falseで自動再生無し)
	autoPlay: true,
	//自動再生時のスライド切り換え感覚(ミリ秒)
	autoPlayDuration: 8000,
	//キーボードの矢印キーによるスライド送りの設定(trueで有効)
	keyboardOnAlways: true,
	//一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
	hidePrevious: false,
});
$("#theTarget2").skippr({
	//スライドショーの変化（”fade" or "slide")
	transition:'fade',
	//変化に関わる時間（ミリ秒）
	speed: 500,
	//easingの種類
	easing:'easeOutQuart',
	//ナビゲーションの形（"block" or "bubble")
	navType: 'bubble',
	//子要素の種類("div" or "img")
	childrenElementType: 'div',
	//ナビゲーションの矢印の表示(trueで表示)
	arrows: true,
	//スライドショーの自動再生(falseで自動再生無し)
	autoPlay: true,
	//自動再生時のスライド切り換え感覚(ミリ秒)
	autoPlayDuration: 8000,
	//キーボードの矢印キーによるスライド送りの設定(trueで有効)
	keyboardOnAlways: true,
	//一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
	hidePrevious: false,
});
});

//PCナビゲーションプルダウン
$(function(){
	$('.pc-nav-list-item').hover(function(){
		$(this).children('.sub').stop().slideToggle();
	});
});

//SPハンバーガーバープルダウン
$(function(){
	$('.sp-icon').click(function(){
		$('.sp-nav-list').stop().slideToggle();
	});
});

$(function() {
    var topBtn = $('#page-top');    
    topBtn.hide();
    //スクロールが100に達したらボタン表示
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
    //スクロールしてトップ
    topBtn.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});

