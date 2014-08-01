<#--freemarker的一些内建函数 array 内建函数-->

<br>

<#assign sequence = ["red", 16, "blue", "cyan"]>

<#-- first 第一个子变量 -->
${sequence?first}  red

<br>

<#-- last 最后一个子变量 -->
${sequence?last}  cyan

<br>

<#--seq_contanis 序列包含-->
${sequence?seq_contains("blue")?string("yes", "no")}  yes

<br>

<#--seq_index_of 第一次出现...时的位置-->
${sequence?seq_index_of("blue")}    2

<br>

<#--seq_last_index_of 最后一次出现..的位置-->
${sequence?seq_last_index_of("blue")}   2

<br>

<#--size 序列大小-->
${sequence?size}  4

<br>

<#assign seq = [28, 16, 100, 6]>

<#-- reverse 将array 反转 -->
<#assign reverse=seq?reverse>
<#list reverse as i>${i},</#list>

<#--sort 排序  (升序的方式) -->
<#assign sort=seq?sort>
<#list sort as i>${i},</#list>

<#--降序 先sort 再reverse-->
<#assign sortDesc=seq?sort?reverse>
<#list sortDesc as i>${i},</#list>

<br>

<#--sort_by 以…来排序 -->
<#assign ls = [
	{"name":"whale", "weight":2000},
	{"name":"Barbara", "weight":53},
	{"name":"zeppelin", "weight":-200},
	{"name":"aardvark", "weight":30},
	{"name":"beetroot", "weight":0.3}
]>

<#list ls?sort_by("name") as i>
- ${i.name}: ${i.weight}
</#list>


