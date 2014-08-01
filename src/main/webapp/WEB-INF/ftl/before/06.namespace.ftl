1、命名空间：
	使用assign和macro指令创建的变量的集合。这样的变量集合被称为namespace命名空间。
	main namespace  只有一个命名空间。
	要复用宏，函数和其他变量的集合，引用library库
	
2、建立一个库

在a.ftl 文件 定义两个变量
	<#macro copyright date>
		<p>Copyright (C) ${date} Julia Smith. All rights reserved.</p>
	</#macro>
	<#assign mail = "jsmith@acme.com">
	
在b.ftl 文件中使用  用 <#import> 指令 
	<#import "a.ftl" as a> <#-- as a则指定的命名空间 -->
	<@a.copyright date="1999-2002"/>
	${a.mail}
	
	修改命名空间下的变量:
	<#assign mail="jsmith@other.com" in a>
	
3、命名空间的生命周期
	
	