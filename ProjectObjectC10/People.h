//
//  People.h
//  ProjectObjectC10
//
//  Created by lingdian on 17/8/23.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject
{
@public
    int age;
    BOOL sex;
    NSMutableString* name;
}
-(void)setAge:(int)pAge andSex:(BOOL)pSex andName:(NSMutableString*)name;
-(void)saySelfInfo;
@end
