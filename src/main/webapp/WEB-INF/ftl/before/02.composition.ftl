1、结构组成：FTL是区分大小写的

Text文本：文本会照着原样来输出。

interpolations插值 : ${ }

FTL tags标签（FreeMarker 模板的语言标签）：不会直接输出出来的东西。
	使用一般以符号#开头 。用户自定义的FTL标签使用@符号来代替# 。

Comments注释：<#--和-->

directives指令：就是所指的FTL标签。freemarker 自己的标签。包含开始标签和结束标签

	if指令：${user}<#if user == "Big Joe">, our beloved leader</#if>!  如果条件符合，显示标签中的内容

			<#if> ... <#else> ... </#if>
			
	list指令：<#list person as p> ${p.name}... </#list>    。 as后面是指定别名
		    <#list 1..100 as x> ${x} ... </#list> 循环1~100
	
	include指令：引用其他页面。<#include "/a.html">
	
	用户自定义指令，将 @ 替代 #
	
freemarker不允许变量不存在或为null 。  
	! 符号，效果是三目运算符   ${user!"Anonymous"}  ：如果user为null则显示"Anonymous"不然显示user的值

	?? 符号，<#if user??>Welcome ${user}!</#if>  如果user为null，则if为folse
									
	animals.python.price!0  为空则报错  与 (animals.python.price)!0 会解决到句柄为null的问题
									

	
	
	