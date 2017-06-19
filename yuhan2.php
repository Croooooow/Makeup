<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Makeup</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.form.js"></script>
	<script type="text/javascript" src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script >
	
function getSelectVal() {
//获取后台json数据
    $.getJSON("server.php", {
        makeup_scene: $("#makeup_scene").val()
    }, function(json) {
        var makeup_style = $("#makeup_style");
        $("option", makeup_style).remove(); //清空原有的选项 
        $.each(json, function(index, array) {
            var option = "<option value='" + array['id'] + "'>" + array['title'] + "</option>";
            makeup_style.append(option);
        });
    });
}
function showUserImage(input) {
	if ($('#user-image').children().length > 1){
		$("#user").addClass("hide");
		$("#file-upload").addClass("hide");
	}
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#user").attr("src", e.target.result);
			$("#user").removeClass("hide");
			$("#file-upload").removeClass("hide");
		}
		reader.readAsDataURL(input.files[0]);
	}
/*	$("#file-user-image").wrap("<form id='image-upload' method='post' enctype='multipart/form-data'></form>"); 
	$("#image-upload").ajaxSubmit({ 
		url: 'faceClassification.php',
		dataType:  'json',
		success: function(data) {
			alert(data);
		}
	}); */
}
function uploadUserImage() {
	//$("#user-image").wrap("<form id='image-upload' method='post' enctype='multipart/form-data'></form>"); 

	//alert( input.files[0]);
	//data_.append("file-user-image", input.files[0]);
/*	$.ajax({
		type: 'post',
		url: 'faceClassification.php',
		data: data_,
		dataType: 'json',
		success: function(data) {
			alert(data);
		}
	}); */
	$("#image-upload").ajaxSubmit({ 
		url: 'faceClassification.php',
		type: 'post',
		dataType:  'json',
		success: function(data) {
			alert(data);
		},
		error: function() {
			alert("error.");
		}
	}); 
}

function getTypeDescription() {
//获取后台json数据
	$.ajax({
		type:"post",
		url:"type_description.php",
		data:{type:$("#makeup_style").val()}, 
		datatype:"json",
		success:function(data) {
			if ($("#recommend").children().length > 0){
				$("#recommend").children().remove();
			}
			res = eval("("+data+")");
			$("#recommend").append("<h4>美知心为您智选的结果："+$("#makeup_style option:selected").text()+"</h4>");
			$("#recommend").append("<img class=\"img-thumbnail col-sm-4\" src=\""+res.img1+"\"/>");
			$("#recommend").append("<img class=\"img-thumbnail col-sm-4\" src=\""+res.img2+"\"/>");
			$("#recommend").append("<img class=\"img-thumbnail col-sm-4\" src=\""+res.img3+"\"/>");
			$("#recommend").append("<h4>图解知识</h4>");
			$("#recommend").append("<ul class=\"list-group\" id=\"knowledge\"></ul>");
			$("#knowledge").append("<li class=\"list-group-item\">风格特征：" + res.style + "</li>");
			$("#knowledge").append("<li class=\"list-group-item\">适合场景：" + res.scene + "</li>");
			$("#knowledge").append("<li class=\"list-group-item\">适合年龄：" + res.age + "</li>");
			$("#knowledge").append("<li class=\"list-group-item\">适合脸型：" + res.shape + "</li>");
			$("#knowledge").append("<li class=\"list-group-item\">适合肤色：" + res.color + "</li>");
			$("#knowledge").append("<li class=\"list-group-item\">服饰搭配：" + res.cloth + "</li>");
			$("#knowledge").append("<li class=\"list-group-item\">发型搭配：" + res.hairstyle + "</li>");
			$("#knowledge").append("<li class=\"list-group-item\">参考配饰：" + res.jewelry + "</li>");

			
			if ($("#recommend2").children().length > 0){
				$("#recommend2").children().remove();
			}
			$("#recommend2").append("<h4>综合匹配指数：89.2%</h4>");
			$("#recommend2").append("<p>其他要素与您匹配：</p>");
			$("#recommend2").append("<p class=\"col-sm-offset-1\">场景匹配：100%</p>");
			$("#recommend2").append("<p class=\"col-sm-offset-1\">年龄匹配：33%</p>");
			$("#recommend2").append("<p class=\"col-sm-offset-1\">脸型匹配：75%</p>");
			$("#recommend2").append("<p class=\"col-sm-offset-1\">肤色匹配：36%</p>");
			$("#recommend2").append("<h4>相似内容：暂无</h4>");
			$("#recommend2").append("<h4>相关内容：暂无</h4>");
    	}
	});
}

// 选择上级菜单选项触发事件
$(function() {
    //getSelectVal();
    $("#makeup_scene").change(function() {
        getSelectVal();
    });
	$("#bt-type-submit").click(function(){
		getTypeDescription();
	});
	$("#file-user-image").change(function() {
		showUserImage(this);
		//uploadUserImage(this);		
	});
	$("#file-upload").click(function(){
		var formData = new FormData();
		formData.append("file-user-image", document.getElementById("file-user-image").files[0]);   
		$.ajax({
			url: "faceClassification.php",
			type: "POST",
			data: formData,
			/**
			*必须false才会自动加上正确的Content-Type
			*/
			contentType: false,
			/**
			* 必须false才会避开jQuery对 formdata 的默认处理
			* XMLHttpRequest会对 formdata 进行正确的处理
			*/
			processData: false,
			success: function (data) {
				alert(data);
/*if (data.status == "true") {
					alert("上传成功！");
				}
				if (data.status == "error") {
					alert(data.msg);
				}*/
			},
			error: function () {
				alert("上传失败！");
			}
		});
		//uploadUserImage();
		//return false;
	});
});

</script>

<style>  
	.col-center-block {  
    float: none;  
    display: block;  
    margin-left: auto;  
    margin-right: auto;  
	}  
</style>
</head>


<html>
<body>
<div class="container">

<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#makeup" data-toggle="tab">
			 造型妆容
		</a>
	</li>
	<li>
		<a href="#ios" data-toggle="tab">
			化妆品采选
		</a>
	</li>
	<li class="dropdown">
		<a href="#ios" data-toggle="tab">
			发型设计
		</a>
	</li>
</ul>
<div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="makeup">
		<p>
<div class="container-fluid">
    

<form class="form-horizontal" role="form">
	<div class="form-group">
		<label for="makeup_scene" class="col-sm-2 control-label">妆容场景</label>
        	<div class="col-sm-3 ">
            	<select name="makeup_scene" id="makeup_scene" class="form-control">
					<option value="">点击热门关键词或选择您想要的妆容场景</option>
                	<option value="1">大型宴会</option>
               		<option value="2">婚礼新娘</option>
                	<option value="3">朋友聚会</option>
            		</select><br>
					<p> 热门关键词 </p><a> 宴会 </a><a> 婚礼 </a><a> 聚会 </a><a> 通勤 </a><a> 社交 </a><a> 商务 </a><a> 约会 </a><a> 演出 </a><a> 减龄 </a><a> 角色 </a>
        	</div>
	</div>

	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">您的身份</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="lastname" >
			</div>
		<label for="user-image" class="col-sm-2 control-label">您的照片</label>
				<div class="col-sm-6 col-float-block" id='user-image'>
					<input type="file" class="form-control col-float-block" id="file-user-image" />
					<img id="user" src="#" class="col-sm-8 hide img-thumbnail" />
					<input type="button" class="form-control hide" id="file-upload" />
				</div>
	</div>

	<div class="form-group">
		<div class="row col-center-block">
			<label for="makeup_style" class="col-sm-2 control-label">妆容类型</label>
        		<div class="col-sm-3 col-float-block">
            		<select name="makeup_style[]" id="makeup_style"  class="form-control"></select>
        		</div>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="button" class="btn btn-default" id="bt-type-submit">登录</button>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-5 col-sm-offset-1" id="recommend">
		</div>
		
		<div class="col-sm-5 col-float-block" id="recommend2">
		</div>
	</div>
<form>





</div>
		
		
		</p>
	</div>
	<div class="tab-pane fade" id="ios">
		<p>待完成</p>
	</div>
</div>
</div>
</body>
</html>