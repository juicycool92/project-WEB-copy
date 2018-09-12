jQuery(function() {
	// 이미지 롤 오버
	if (jQuery('.nav li').size() > 0) {
		jQuery('.nav li').mouseenter(
				function() {
					if (jQuery(this).find('img:first').attr('src').indexOf(
							'_on.') == '-1') {
						jQuery(this).find('img:first').attr(
								'src',
								jQuery(this).find('img:first').attr('src')
										.replace('.', '_on.'));
					}
				}).mouseleave(
				function() {
					jQuery(this).find('img:first').attr(
							'src',
							jQuery(this).find('img:first').attr('src').replace(
									'_on.', '.'));
				});
	}
});
