
/* iframe 속성선언 */
$(document).ready(function() {
	$("iframe").each(function() {
		var ifr_source = $(this).attr('src');
		var wmode = "wmode=transparent";
			if(ifr_source.indexOf('?') != -1) {
				var getQString = ifr_source.split('?');
				var oldString = getQString[1];
				var newString = getQString[0];
				$(this).attr('src',newString+'?'+wmode+'&'+oldString);
			}
			else $(this).attr('src',ifr_source+'?'+wmode);
	});
});

jQuery(function() {
	// 이미지 롤 오버
	if (jQuery('._on').size() > 0) {
		jQuery('._on').mouseenter(function() {
			if(jQuery(this).attr('src').indexOf('_on.') == '-1') {
				jQuery(this).attr('src', jQuery(this).attr('src').replace('.png', '_on.png'));
			}
		}).mouseleave(function() {
			jQuery(this).attr('src', jQuery(this).attr('src').replace('_on.png', '.png'));
		});
	}
});



$(document).ready(function(){
	$(".mv1").css({"opacity":"0"});
	$(".mv2").css({"opacity":"0"});
	$(".mv3").css({"opacity":"0"});

	$(".mv1").delay(0).animate({"opacity":"1"},1000);
	$(".mv2").delay(500).animate({"opacity":"1"},1000);
	$(".mv3").delay(1000).animate({"opacity":"1"},1000);

});

$(function(){
		
	$("li.onem").each(function(){
		$(this).on("mouseenter",function(){
			var $oimg = $(this).find("img.od");
			if($oimg.attr('src').indexOf('_on.') == '-1') {
				$oimg.attr('src',$oimg.attr('src').replace('.png', '_on.png'));
			}
			$(this).css("z-index","10");
			$("li.onem").not($(this)).css("z-index","2");
			$(this).find(".twom:not(:animated)").stop().slideDown();
		});
		$(this).on("mouseleave",function(){
			var $oimg = $(this).find("img.od");
			$oimg.attr('src',$oimg.attr('src').replace('_on.png', '.png'));
			$(this).find(".twom").slideUp();
		});

		$(this).on("focusin",function(){
			var $oimg = $(this).find("img.od");
			
			
			var $tindex = $(this).index();
			if($oimg.attr('src').indexOf('_on.') == '-1') {
				$oimg.attr('src',$oimg.attr('src').replace('.', '_on.'));
			}
			$(this).css("z-index","10");
			$("li.onem").not($(this)).css("z-index","2");
			$(this).find(".twom:not(:animated)").show();
			$(".twom").not($(this).find(".twom")).hide();
			
			
		});
		
	});


	
	$(".twom").find("li").on("focusin", function(){
		if($(this).find("img").attr('src').indexOf('_on.') == '-1') {
			$(this).find("img").attr('src',$(this).find("img").attr('src').replace('.', '_on.'));
		}
	});

	$(".mvwrap").on("focusin", function(){
		$(".twom:last-child").hide();
	});


	$(".twom").find("li").on("focusout", function(){
		$(this).find("img").attr('src',$(this).find("img").attr('src').replace('_on.', '.'));
	});	
	
	$(".topm").find("li.onem").on("focusin", function(){
		if($(this).find("img.od").attr('src').indexOf('_on.') == '-1') {
			$(this).find("img.od").attr('src',$(this).find("img.od").attr('src').replace('.', '_on.'));
		}
	});

	$(".topm").find("li.onem").on("focusout", function(){
		$(this).find("img.od").attr('src',$(this).find("img.od").attr('src').replace('_on.', '.'));
	});
	$("#contentsBody").on("focusin",function(){
		$(".twom:last-child").hide();
	});

	$("ul.nav").find("li.sub").on("focusin", function(){
		var $ls = $(this).find("span");
		if($ls.find("img").attr('src').indexOf('_on.') == '-1') {
			$ls.find("img").attr('src',$ls.find("img").attr('src').replace('.', '_on.'));
		}
	});
	$("ul.twot").find("li").on("focusin", function(){
		if($(this).find("img").attr('src').indexOf('_on.') == '-1') {
			$(this).find("img").attr('src',$(this).find("img").attr('src').replace('.', '_on.'));
		}
	});
	$("ul.twot").find("li").on("focusout", function(){
		$(this).find("img").attr('src',$(this).find("img").attr('src').replace('_on.', '.'));
	});

	$("ul.nav").find("li.sub").on("focusout", function(){
		var $ls = $(this).find("span");
		$ls.find("img").attr('src',$ls.find("img").attr('src').replace('_on.', '.'));
	});
});


function footerPop(num){
	switch(num){
		case 1:
		window.open('/snak/footer/pop_legal_notice.asp', 'popLegal', 'width=600, height=460, left=300, top=200');
		break;

		case 2:
		window.open('/snak/footer/pop_user_guide.asp', 'popPrivacy', 'width=600, height=654, left=300, top=200');
		break;

		case 3:
		window.open('/snak/members/pop_privacy.asp', 'popLegal', 'width=600, height=654, left=300, top=200');
		break;

		case 4:
		window.open('/snak/footer/pop_forbid_colleting_email.asp', 'popEmail', 'width=600, height=347, left=300, top=200'); 
		break;
	}
}