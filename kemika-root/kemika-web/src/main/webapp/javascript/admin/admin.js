$(function(){
	
	
	$(document).on({
		mouseover: function(){
			$(this).find('.category-options').css('display', 'inline-block');
		},
		mouseout: function(){
			$(this).find('.category-options').hide();
		}
	}, '.category-name');
	
	$(document).on({
		click: function(){
			window.location.href = urls.uploadimg + $(this).attr('cat-id');
		}
	}, '.edit-img-container')
	
});