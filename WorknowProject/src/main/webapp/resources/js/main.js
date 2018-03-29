$(document).ready(function(){
	
	$('.search').click(function(){
		$('#search_result').show();
	});
	
	var $menuEle = $('dt'); // 탭메뉴를 변수에 지정
	$menuEle.click(function() { // 탭메뉴 클릭 이벤트
	    $('dd').addClass('hidden');
	    $(this).next().removeClass('hidden');
	})
	
	// 주소 선택 했을 시 두번째 주소 선택칸 내용 변경 메소드
	$('#sel_adress1').change(function(){
		if($(this).val() == "gyeonggi"){
			$(".sel_adress2").hide();
			$("#gyeonggi").show();
		}
		
		if($(this).val() == "seoul"){
			$(".sel_adress2").hide();
			$("#seoul").show();
		}
		
		if($(this).val() == "incheon"){
			$(".sel_adress2").hide();
			$("#incheon").show();
		}
		
		if($(this).val() == "gangwon"){
			$(".sel_adress2").hide();
			$("#gangwon").show();
		}
		
		if($(this).val() == "daejeon"){
			$(".sel_adress2").hide();
			$("#daejeon").show();
		}
		
		if($(this).val() == "sejong"){
			$(".sel_adress2").hide();
			$("#sejong").show();
		}
		
		if($(this).val() == "chungcheongnam"){
			$(".sel_adress2").hide();
			$("#chungcheongnam").show();
		}		
	});
	
	// 주소로 알바찾기 돋보기 클릭
	$(".search_adress").click(function(){
			
		
			$(".search_all").hide();
			$(".search_result").css("visibility", "visible"); 
			
			var adress1 = $('#sel_adress1').val();
			var adrees2 = "";
			
			if(adress1 == "gyeonggi")
				adress2 = $('#gyeonggi').val();
			
			if(adress1 == "seoul")
				adress2 = $('#seoul').val();
			
			if(adress1 == "incheon")
				adress2 = $('#incheon').val();
			
			if(adress1 == "gangwon")
				adress2 = $('#gangwon').val();
			
			if(adress1 == "daejeon")
				adress2 = $('#daejeon').val();
			
			if(adress1 == "sejong")
				adress2 = $('#sejong').val();
			
			if(adress1 == "chungcheongnam")
				adress2 = $('#chungcheongnam').val();
			
			
			
			$.ajax({
			    url : "search_adress.ma",
			    type : "GET",
			    data : {adress1 : adress1,
			    		adress2 : adress2},
			    success : function() {
			        alert("성공!!!!");
			    },
			    error : function(jqXHR, textStatus, errorThrown) {
			        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
			    }
			});
			
	});
	
	// 다시 알바찾기로 돌아가기
	$(".search_back").click(function(){
		$(".search_result").css("visibility", "hidden"); 
		$(".search_all").show();
	});
	
});

