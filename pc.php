<!DOCTYPE html> 
<html> 
<head> 

<head>
<style>
.text-font{line-height:50px;text-alight:center;color:black; font-weight:bold;font-size:18px;}
.q{ width:100%; margin:0 auto;}

.a{width:70%; font-size:18px; height:70%; float:left; background-color:lightgray;line-height:400px;
color:#FFF; }

.b{width:29%; font-size:18px;height:70%; float:right;background-color:pink;line-height:400px;
text-alight:center;color:#FFF; font-weight:bold; margin-bottom:10px;}

</style>



<meta charset="utf-8"> 
<title>菜鸟教程(runoob.com)</title> 
<script>
function showSite(str)
{
    if (str=="")
    {
        document.getElementById("txtHint").innerHTML="";
        return;
    } 
    if (window.XMLHttpRequest)
    {
        // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
        xmlhttp=new XMLHttpRequest();
    }
    else
    {
        // IE6, IE5 浏览器执行代码
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET","pc_mysql.php?q="+str,true);
    xmlhttp.send();
}

function showHint(str)
{
	if (str.length==0)
	{ 
		document.getElementById("txtHint2").innerHTML="";
		return;
	}
	if (window.XMLHttpRequest)
	{
		// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行的代码
		xmlhttp=new XMLHttpRequest();
	}
	else
	{	
		//IE6, IE5 浏览器执行的代码
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			document.getElementById("txtHint2").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET","pc_div.php?q="+str,true);
	xmlhttp.send();
}

</script>
</head>
<body>
<center>
<table border="1" width="80%">
  <tr>
    <th> 
        <form>
        <br>
        <center>
        <select name="users" onchange="showSite(this.value)" >
        <option>点击热门词汇或者选择您想要的妆容场景:</option>
        <option value="1">日常装扮</option>
        <option value="2">大型宴会</option>
        </select>
        <br><br>
        热门关键字：宴会 婚礼 聚会 通勤 社交 商务 约会 演出 主持 减龄 角色
        <br><br>
    </th></form>   
  </tr>


  <tr>
    <td><center>
    <div class =text-font id="txtHint">
    <table  border="0" width="100%">
        <tr>
            <th>您的身份: </th>
        </tr>
        <tr>
            <th>您其他的: </th>
        </tr>
 </div>
 </table> 
        <tr>
            <th>           
            <form>          
            您咨询的: <input type = "text"  onkeyup="showHint(this.value)">          
            </form>    
            </th>
        </tr> 
    </td>
  </tr>
  <tr>
    <td>
    <div class="q">
    <div class="a">
    <p>返回值: <span id="txtHint2"></span></p>
    
    </div>
    <div class="b">xx</div>
    </div>
    </td>      
  </tr>
</table>
</center>

</body>
</html>