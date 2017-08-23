//
//  XXClass.m
//  ProjectObjectC10
//
//  Created by lingdian on 17/8/23.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "XXClass.h"

@implementation XXClass
-(void)addPeople:(People*)pPeople{
    if(peoples==nil){
        peoples=[[NSMutableArray alloc]init];
    }
    [peoples addObject:pPeople];
}
-(void)printAllPeople{
    long length=[peoples count];//NSUInteger 是long 类型
    for(int i=0;i<length;i++){
        id item=[peoples objectAtIndex:i];//返回的值是id 类型 其实就是(void*) 万能指针类型
        People* people=(People*)item;
        [people saySelfInfo];
    }
}
-(People*)findPeopleByName:(NSString*)pName{
    long length=[peoples count];
    for (long i=0; i<length; i++) {
        People* item=[peoples objectAtIndex:i];
        NSMutableString* strName=item->name;
        NSString *nsString = [NSString stringWithString:strName];
        if([nsString isEqualToString:pName]){
            return item;
        }
    }
    return nil;
}
@end
