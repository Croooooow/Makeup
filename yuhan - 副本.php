<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 标签页（Tab）插件</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style>  
	.col-center-block {  
    float: none;  
    display: block;  
    margin-left: auto;  
    margin-right: auto;  
	}  

	.col-float-block {  
    float: left;  
    display: block;  
    margin-left: auto;  
    margin-right: auto;  
	} 


	</style>
</head>
<body>

<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#makeup" data-toggle="tab">
			 造型妆容
		</a>
	</li>
	<li>
		<a href="#ios" data-toggle="tab">
			iOS
		</a>
	</li>
	<li class="dropdown">
		<a href="#ios" data-toggle="tab">
			iOS2
		</a>
	</li>
</ul>
<div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="makeup">
		<p>
		<div class="container-fluid">
    		<div class="row">
        		<div class="col-sm-3 col-center-block">
            		<label>妆容场景：</label>
            		<select name="bigname" id="bigname" class="form-control">
						<option value="">点击热门关键词或选择您想要的妆容场景</option>
                		<option value="1">编程技术</option>
                		<option value="2">社交网站</option>
                		<option value="3">好吃的</option>
            		</select><br>
					<p>热门关键词 宴会 婚礼 聚会 通勤 社交 商务 约会 演出 减龄 角色</p>
        		</div>	
			</div>

			<div class="row col-center-block">
        		<div class="col-sm-3 col-float-block">
            		<label>小类：</label>
            		<select name="smallname[]" id="smallname"  class="form-control">
            		</select>
        		</div>

				<div class="col-sm-2 col-float-block">
            		<button type="button" id="add" class="btn btn-success">问问之心</button>
       			</div>
			</div>


		</div>
		
		
		</p>
	</div>
	<div class="tab-pane fade" id="ios">
		<p>待完成</p>
	</div>
</div>

</body>
</html>