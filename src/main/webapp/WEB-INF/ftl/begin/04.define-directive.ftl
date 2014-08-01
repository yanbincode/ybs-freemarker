测试自定义的指令。
<br>
输出hello：
<br>

<#-- 在内容中输出hello -->
<@hello>
	aaa
	bbb
	ccc
</@hello>

<br>
输出大写：
<br>

<#-- 将指令内部的内容转成大写 -->
<@upper>
	aaa
	bbb
	ccc
</@upper>

<br>
输出加法：
<br>

<#-- 指令相加输出结果-->
<@add v1="1" v2="2" />

<br>
重复输出：
<br>

<#--重复输出指令间的内容-->
<#assign x = 1>

<@repeat count=4>
	Test ${x}
	<#assign x = x + 1>
	
	<#list 1..3 as y>
		list: ${y}
	</#list>
</@repeat>
