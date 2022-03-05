$(function() {
  // 写真
  $('.photos').each(function(){
    $(this).magnificPopup({
      /* 基本設定いろいろ */
      delegate: 'a',
      type: 'image',
      tLoading: 'Loading image #%curr%...',
      mainClass: 'mfp-img-mobile',
      gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0,1],
        arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>',
        tPrev: 'Previous (Left arrow key)',
        tNext: 'Next (Right arrow key)',
        tCounter: '<span class="mfp-counter">%curr% of %total%</span>'
      },
      image: {
        tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
        titleSrc: function(item) {
          return item.el.attr('title') + '<small>by 伊勢湾カップ実行委員会</small>';
        }
      },
      /* クリックしたときにズームアップするための設定 */
      mainClass: 'mfp-with-zoom',
      zoom: {
        enabled: true,
        duration: 300,
        easing: 'ease-in-out',
        opener: function(openerElement) {
          return openerElement.is('img') ? openerElement : openerElement.find('img');
        }
      }
    });
  });

  // 動画
	$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
		disableOn: 700,
		type: 'iframe',
		mainClass: 'mfp-fade',
		removalDelay: 160,
		preloader: false,

		fixedContentPos: false
	});

  // $('.movies a').each(function(){
  //   $(this).magnificPopup({
  // $('.movies a').magnificPopup({
  //   /* 基本設定いろいろ */
  //   type: 'iframe',
  //   disableOn: 700,
	// 	mainClass: 'mfp-fade',
	// 	removalDelay: 160,
	// 	preloader: false,
  //
	// 	fixedContentPos: false
	// });
  // });
});
