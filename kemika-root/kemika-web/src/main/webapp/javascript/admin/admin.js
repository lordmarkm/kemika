$(function(){
	$(document).on({
		click: function(){
			window.location.href = urls.uploadimg + $(this).attr('entity-type') + '/' + $(this).attr('cat-id');
		}
	}, '.edit-img-container')
});