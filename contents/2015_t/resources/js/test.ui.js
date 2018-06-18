var tvBar ={
	init: function(){
		this.addEvent();
	},
	addEvent: function(){
		var winHei = $(window).height();
		//var conHei = $('#contents').height();
		$('#contents').css({'height':winHei + 'px'});
		$('#contents').css({'overflow':'hidden'});
		console.log(conHei);
	}
};

$(document).ready(function(){
	//navDepth.init();
	//console.log($('.tvDate').scrollTop());
});

// $(window).scroll(function() {
// 	var height = $(document).scrollTop();
// 	dateFixed(height);
// });

// function dateFixed(str){
// 	if(str >= 0){
// 		$(".tvDate").animate({top : str}, 0);
// 	}
// };

// setInterval( function(){ 
// 	time.init();
// }, 1000);

// var time = {
// 	init: function(){
// 		this.addEvent();
// 	},
// 	addEvent: function(){
// 		var d = new Date();

// 		var hours = 23 - d.getHours();
// 		if((hours + '').length == 1){
// 			hours = '0' + hours;
// 		}
// 		var min = 59 - d.getMinutes();
// 		if((min + '').length == 1){
// 			min = '0' + min;
// 		}
// 		var sec = 59 - d.getSeconds();
// 		if((sec + '').length == 1){
// 			sec = '0' + sec;
// 		}

// 		$('#countdown').html(hours + ':' + min + ':' + sec + ' 남음');
// 	}
// };
// var dateFixed = {
// 	init: function(){
// 		this.addEvent(test);
// 		console.log(test);
// 	},
// 	addEvent: function(){
// 		$(window).scroll(function() {
// 			var height = $(document).scrollTop();
// 			if(height >= 0){
// 	 			$(".tvDate").animate({top : height}, 0);
// 	 			test(height);
// 	 		}
// 		});
// 	}
// };