<#--freemarker的一些内建函数 date内建函数-->

<br>

<#--date，time，datetime 日期格式化-->
${"10/25/1995"?date("MM/dd/yyyy")}  1995-10-25
${"15:05:30"?time("HH:mm:ss")} 		15:05:30
${"1995-10-25 03:05:25"?datetime("yyyy-MM-dd hh:mm:ss")}  1995-10-25 3:05:25
