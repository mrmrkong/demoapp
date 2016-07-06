$(function(){
	var form1 = $("#unofficial-form")
	var form2 = $("#official-form")
	$('#copy-btn1to2').click(function(){
		$(':input[name]', form2).val(function(){
			return $(':input[name="'+this.name+'"]', form1).val();
		});
		console.log('Working');
		$('#rspec-test a[href="#2"]').tab('show')
	});	
	$('#copy-btn2to1').click(function(){
		$(':input[name]', form1).val(function(){
			return $(':input[name="'+this.name+'"]', form2).val();
		});
		console.log('Working');
		$('#rspec-test a[href="#1"]').tab('show')
	});	
});