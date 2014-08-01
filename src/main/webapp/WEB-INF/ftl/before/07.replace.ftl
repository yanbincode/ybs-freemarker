替换语法

特性从FreeMarker 2.3.4版本后才可用。

用 [和] 来代替 <和>

 调用预定义指令：[#list animals as being]...[/#list]
 调用自定义指令：[@myMacro /]
 注释：[#-- the comment --]

要想替换语法启用，必须在页面头 声明：[#ftl]