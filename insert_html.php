<!DOCTYPE HTML> 
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body> 



<?php
error_reporting(0);
?>


<p><span class="error">* required field.</span></p>
<form action="insert" method="post"> 
    <select name="age_Id">
    <option value="">选择年龄ID:</option>
    <option value="1">1--13岁以下</option>
    <option value="2">2--14-17岁</option>
    <option value="3">3--18-24岁</option>
    <option value="4">4--25-29岁</option>
    <option value="5">5--30-35岁</option>
    <option value="6">6--36-40岁 </option>
    <option value="6">7--40岁以上 </option>
    </select>
    <span class="error">* <?php echo $age_IdErr;?></span>
    <p></p>

    <select name="skin_Id">
    <option value="">选择肤色ID:</option>
    <option value="1">1--中性</option>
    <option value="2">2--暖色</option>
    <option value="3">3--冷色</option>
    </select>
    <span class="error">* <?php echo $skin_IdErr;?></span>
    <p></p>

        <select name="foundation_RGB_Id">
    <option value="">选择底妆色号ID:</option>
    <option value="1">1--自然色</option>
    <option value="2">2--珍珠色</option>
    <option value="3">3--裸米色</option>
    </select>
    <span class="error">* <?php echo $foundation_RGB_IdErr;?></span>
    <p></p>
    <input type="submit" value="提交">
    </form>





</body>
</html>