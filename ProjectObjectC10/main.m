//
//  main.m
//  ProjectObjectC10
//
//  Created by lingdian on 17/8/23.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
#import "XXClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString* ns=@"abcd";//char* 封装成了字符串 要不然 使用起来就太麻烦了
        //NSString 是一个类 所以必须用指针 由于初始化类比较繁琐 所以使用了@“”语法糖
        NSLog(@"ns:%@\n",ns);
        
        //NSString 初始化的字符串 是不能修改的 如果想修改 可以使用NSMutable
        NSMutableString* str=[[NSMutableString alloc]initWithString:@"abcdefg"];//c初始化
        [str appendString:@"hijk"];//追加
        [str appendFormat:@"%d",100];//格式化追加
        NSLog(str);
        
        //NSArray 是固定的数组 初始化完成之后 不能再添加了
//        NSArray* array1=[NSArray arrayWithObjects:@"item1",@"item2"];
        NSArray *arr3 = [NSArray arrayWithObjects:@"one",@"two",@1, nil,@"three"];//如果数组中有nil
        //那么数组就终止了 就这么大 所以遍历的时候 three 是不会出来的

        NSUInteger length=[arr3 count];//获取数组的长度  NSUInteger 类型 就是long类型
        for(int i=0;i<length;i++){//获取数组中的某一项 使用objectAtIndex 获取 他的返回值是id类型 也是万能类型
            NSLog(@"index:%d,values:%@\n",i,[arr3 objectAtIndex:i]);
        }
        
        //NSMutableArray 是可以再添加的列表
        NSMutableArray* fixArray=[[NSMutableArray alloc]init];
        
        
        
         People* people=[People new];
        [people setAge:20 andSex:TRUE andName:@"xiaoHong"];
        [people saySelfInfo];
        
        People* people2=[People new];
        [people2 setAge:23 andSex:FALSE andName:@"xiaoQiang"];
        [people2 saySelfInfo];
        
        
        XXClass* xxClass=[XXClass new];
        
        [xxClass addPeople:people];
        [xxClass addPeople:people2];
        
        
        [xxClass printAllPeople];
        
        People* findPeople=[xxClass findPeopleByName:@"xiaoHong1"];
        if(findPeople==nil){//nil 其实是(void*)0 就是一个空的指针地址
            NSLog(@"查无此人\n");
        }else{
            NSLog(@"找到这个人了:%@\n",findPeople->name);
          
        }

        
        
    }
    return 0;
}
