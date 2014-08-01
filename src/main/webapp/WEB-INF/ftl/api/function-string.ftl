<#--freemarker的一些内建函数  String字符串内建函数-->
<br>
<#--substring 字符串截取 -->
${'abc'?substring(0)}  abc
${'abc'?substring(1)}  bc
${'abc'?substring(2)}  c
${'abc'?substring(3)}  

<br>

${'abc'?substring(0, 0)}  
${'abc'?substring(0, 1)}  a
${'abc'?substring(0, 2)}  ab
${'abc'?substring(0, 3)}  abc

<br>

<#--cap_first 首字母大写 -->
${" green mouse"?cap_first}     Green mouse
${"greEN mouse"?cap_first}	   GreEN mouse
${"- green mouse"?cap_first}   - green mouse

<br>

<#--uncap_first 首字母小写-->
${" Green mouse"?uncap_first}     green mouse
${"GreEN mouse"?uncap_first}	   greEN mouse
${"- Green mouse"?uncap_first}   - Green mouse

<br>

<#--capitalize 每个单词首字母小写-->
${" Green mouse"?capitalize}     Green Mouse
${"GreEN mouse"?capitalize}	   GreEN Mouse
${"- Green mouse"?capitalize}   - Green Mouse

<br>

<#--lower_case 每个字母都小写-->
${" Green mouse"?lower_case}     green mouse
${"GreEN mouse"?lower_case}	   green mouse
${"- Green mouse"?lower_case}   - green mouse

<br>

<#--upper_case 每个字母大写-->
${" Green mouse"?upper_case}     GREEN MOUSE
${"GreEN mouse"?upper_case}	   GREEN MOUSE
${"- Green mouse"?upper_case}   - GREEN MOUSE

<br>

<#--starts_with 以…开头-->
<#if "redhead"?starts_with("re")> true </#if>

<br>

<#--ends_with 判断以“xx” 结尾  返回值是boolean型-->
<#if "redhead"?ends_with("head")> true </#if>

<br>

<#--contains 字符串是否包含  返回值是boolean型-->
<#if "piceous"?contains("ice")>It contains "ice"</#if>

<br>

<#--matches 正则表达式匹配-->
<#if "fxo"?matches("f.?o")>Matches.<#else>Does not match.</#if>

<br>

<#--最后的索引所在的位置-->
${"abcabc"?last_index_of("ab")} 3

<br>

<#--字符串长度-->
${"adasdfasf"?length}  9

<br>

<#--index_of 指定索引所在位置-->
${"abcabc"?index_of("bc", 2)}   4

<br>

<#--replace 替换-->
${"this is a car"?replace("car", "bulldozer")}  this is a bulldozer

<br>

<#--trim 去除字符串前后空格-->
${"  is   "?trim}  this is a bulldozer

<br>

<#--split 分割-->
<#list "someMOOtestMOOtext"?split("MOO") as x>
- ${x}
</#list>

<br>

<#--url URL 转义    注意：转义URL必须先指定编码-->
<#setting url_escaping_charset='ISO-8859-1'> 
${"www.yb.com?method=as/a/b c>"?url}
