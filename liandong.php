<!DOCTYPE html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 标签页（Tab）插件</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
function getSelectVal() {
//获取后台json数据
    $.getJSON("server.php", {
        bigname: $("#bigname").val()
    }, function(json) {
        var smallname = $("#smallname");
        $("option", smallname).remove(); //清空原有的选项 
        $.each(json, function(index, array) {
            var option = "<option value='" + array['id'] + "'>" + array['title'] + "</option>";
            smallname.append(option);
        });
    });
}
// 选择上级菜单选项触发事件
$(function() {
    getSelectVal();
    $("#bigname").change(function() {
        getSelectVal();
    });
});
//点击添加，获取选中选项的value和text
$(document).ready(function() {
    $("#add").click(function() {
        var result = $("#result");
        $("#smallname option:selected").each(function(){
            console.log($(this).val() + $(this).text());
            var option = "<option value='" + $(this).val() + "' selected=\"selected\">" + $(this).text() + "</option>";
            result.append(option);
        });       
    });
});

</script>
<html lang="">

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <label>大类：</label>
            <select name="bigname" id="bigname" class="form-control">
                <option value="1">编程技术</option>
                <option value="2">社交网站</option>
                <option value="3">好吃的</option>
            </select>
        </div>
        <div class="col-sm-3">
            <label>小类：</label>
            <select name="smallname[]" id="smallname"  class="form-control">
            </select>
        </div>
        <div class="col-sm-3">
            <button type="button" id="add" class="btn btn-success">添加</button>
        </div>
        <div class="col-sm-3">
            <label>结果：</label>
            <select name="result[]" id="result" multiple="" class="form-control">
            </select>
        </div>
    </div> 
</div>

</body>

</html>