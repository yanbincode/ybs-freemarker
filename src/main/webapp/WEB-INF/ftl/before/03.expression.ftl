直接指定值:
 字符串："Foo" 或者 'Foo' 或者 "It's \"quoted\"" 或者 r"C:\raw\string"
 数字：123.45
 布尔值：true, false
 序列：["foo", "bar", 123.45], 1..100
 哈希表：{"name":"green mouse", "price":150}
 检索变量 <#list[BR] animals as[BR] being[BR] >[BR] ${being.name} for ${being.price} Euros[BR] </#list >
 顶层变量：user
 从哈希表中检索数据：user.name, user[“name”]
 从序列中检索：products[5]
 特殊变量：.main
 字符串操作
 插值（或连接）："Hello ${user}!"（或"Free" + "Marker"）; 注：指令中写插值，不需要${}
 获取一个字符：name[0]
 序列操作
 连接：users + ["guest"]
 序列切分：products[10..19] 或 products[5..]
 哈希表操作
 连接：passwords + {"joe":"secret42"}
 算数运算: (x * 1.5 + 10) / 2 - y % 100
 比较运算：x == y, x != y, x < y, x > y, x >= y, x <= y, x &lt; y, 等等
 逻辑操作：!registered && (firstVisit || fromEurope)
 内建函数：name?upper_case
 方法调用：repeat("What", 3)
 处理不存在的值
 默认值：name!"unknown" 或者(user.name)!"unknown" 或者name! 或者 (user.name)!
 检测不存在的值：name?? 或者(user.name)??

									freemarker不允许变量不存在或为null 。  ! 符号，效果是三目运算符   ${user!"Anonymous"}   

									?? 判断是否存在， user??  返回的boolean值
									
									animals.python.price!0 与 (animals.python.price)!0