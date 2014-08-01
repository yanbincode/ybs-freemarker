<#--freemarker的一些内建函数 Number 数字内建函数-->
<br>

<#--数字转成字符串-->
${42?string}    42
${42?string.number} 42
${42?string.currency} $42.00
${42?string.percent} 4,200%
${42?string.computer} 42

还可以这样来格式化小数<br>
<#assign x = 1.234>
${x?string("0")}
${x?string("0.#")}
${x?string("0.##")}
${x?string("0.###")}
${x?string("0.####")}

<br>

<#--round,floor,ceiling 数字的舍入处理-->
round：返回最近的整数。如果数字以.5 结尾，那么它将进位（也就是说向正无穷方向进位）
floor：返回数字的舍掉小数后的整数（也就是说向负无穷舍弃）
ceiling：返回数字小数进位后的整数（也就是说向正无穷进位）
<#assign testlist=[0, 1, -1, 0.5, 1.5, -0.5,-1.5, 0.25, -0.25, 1.75, -1.75]>
<#list testlist as result>
	result=${result} ,
	result?round=${result?round} ,
	result?floor=${result?floor} ,
	result?ceiling=${result?ceiling}
	<br>
</#list>
