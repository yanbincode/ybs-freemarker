1、freemarker指令：

<#if > </#if> ; <#if> ... <#else> ... </#if>

<#list></#list>

<#include>

2、自定义指令 ；利用宏 可以重复使用；使用macro指令来定义

2.1
创建一个宏
<#macro greet>
	Hello world！
</#macro>

宏调用
<@greet />

2.2 
创建带参数的宏
<#macro greet person>
	Hello ${person}
</#macro>

宏调用
<@greet person="yb"/>

依次类推可以定义多个参数，调用时必须对所有参数进行赋值

2.3
创建带参数且指定默认值的宏
<#macro greet person color="black">
Hello ${person} ${black}
</#macro>

宏调用
<@greet person="yb" />

3、嵌套指令
<#nested> 执行位于开始和结束标记指令之间的模板代码段

宏创建
<#macro border>
	abcd
	<#nested> <#--可以定义多个，输出多个-->
	efgh
</#macro>

宏调用
<@border>text</@border>

结果：abcd 
		text
    efgh
	  
4、宏和循环变量
	  
	  