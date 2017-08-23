//
//  People.m
//  ProjectObjectC10
//
//  Created by lingdian on 17/8/23.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "People.h"

@implementation People
-(void)setAge:(int)pAge andSex:(BOOL)pSex andName:(NSString*)pName{
    age=pAge;
    sex=pSex;
    name=[[NSMutableString alloc]initWithString:pName];
}
-(void)saySelfInfo{//NString 输出的标示 是@  整形是i
//    NSLog(@"字符串:%@",name);
//    NSLog(@"字符:%c",a);
//    NSLog(@"布尔值:%i",isShow);
//    NSLog(@"整形:%i",i);
//    NSLog(@"单精度浮点数： %f",f);
//    NSLog(@"精度浮点数,且只保留两位小数:%.2f",f);
//    NSLog(@"科学技术法:%e",f);
//    NSLog(@"科学技术法(用最简短的方式):%g",f);
//    NSLog(@"同时打印两个整数：i＝%i,f=%f",i,f)
    NSLog(@"name:%@,age:%d,sex:%d\n",name,age,sex);
}
@end
