# ProjectObjectC10
4-2 字符串

NSString *str=@"abc"
使用了语法糖的东西把字符串指针转化为类指针

语法糖内部把类的初始化然后赋值的操作都给做了

NSString的字符是无法修改的。
NSMutableString是可修改的字符串，实例化 NSMutableString使用了new方法， 当然也可以使用语法糖， 其实new方法内部调用了alloc和init，一个是分配空间，一个是初始化空间。

其中init有多个方法，比如initWithString:@"jack"

NSMutableString 还包括了appendFomat方法
str2 appendFomat:@":%d


NSString 与NSMutableString 之间的转化

NSString->NSMutableString
NSSTring* pName=@"xiaoming";
NSMutableString* mutableStr=[[NSMutableString alloc]initWithString:pName];

NSMutableString->NSString
NSMutableString* mutableStr=[[NSMutableString alloc]initWithString:@"xiaoming"];
NSString *nsString = [NSString stringWithString:mutableStr];

NSString 比较字符串内存 使用 isEqualToString

NSMutableString 介绍的网址
http://www.cnblogs.com/qingyuan/p/3550445.html

NSLog 输出NSString类型的字符串  它可以以fomat形式输出
NSLog的格式输出如下：
%@        对象

%d, %i   整数

%u          无符整型

%f           浮点/双字

%x, %X   二进制整数

%o          八进制整数

%zu        size_t

%p          指针

%e          浮点/双字 （科学计算）

%g          浮点/双字

%s C      字符串

%.*s        Pascal字符串

%c           字符

%C          unichar

%lld        64位长整数（long long）

%llu        无符64位长整数

%Lf         64位双字

例如：
NSLog(@"Hello World");
NSLog(@"the word is:%@",@"yours");
NSLog(@"a=%d,y=%d",10,20);

关于NSString 比较的问题可以参考网址：http://blog.csdn.net/jiangwei0910410003/article/details/41788223

NSArray 与NSMutableArray区别是 NSArray饰初始化之后不可修改  而NSMutableArray是可以动态添加修改的
他们其他的方法都是一样的 count方法可以获取数据  
下面是关于NSArray介绍的信息
http://www.jianshu.com/p/c8caa30afd9d
