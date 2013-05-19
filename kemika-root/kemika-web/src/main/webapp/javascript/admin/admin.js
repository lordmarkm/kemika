$(function(){
	
	
	$(document).on({
		mouseover: function(){
			$(this).find('.category-options').css('display', 'inline-block');
		},
		mouseout: function(){
			$(this).find('.category-options').hide();
		}
	}, '.category-name')
	
	
});