$(document).ready(function(e) {
   　　//写入方法

function FillSheng()
{
　　//方法的功能
 var pcode = "0001";   //定义的代号是0001
    $.ajax({
    　　async:false,  //默认是同步的，false是异步进行
    　　url:"sanjiliandong_chuli.php",  //处理数据的处理页面
    　　data:{pcode:pcode}, 
    　　type:"POST",  //数据传输方式
    　　dataType:"TEXT",
    　　success: function(data){
        　　//处理页面结束后执行的代码
        }
    });

}
//填充市的方法
function FillShi()
{
　　//方法的功能
}



var str = "<select id='sheng'></select><select id='shi'></select><select id='qu'></select>";  //三个下拉菜单项
$("#sanji").html(str);  //将菜单交个要使用这个封装的页面的div中
   //填充省的方法

$("#sheng").change(function(){  //改变省，下面的市和区显示
　　FillShi();
　　
})


});

