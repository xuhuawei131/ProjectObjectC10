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
