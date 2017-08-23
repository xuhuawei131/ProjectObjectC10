//
//  XXClass.h
//  ProjectObjectC10
//
//  Created by lingdian on 17/8/23.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "People.h"
@interface XXClass : NSObject

{
    NSMutableArray* peoples;
}
-(void)addPeople:(People*)pPeople;
-(void)printAllPeople;
-(People*)findPeopleByName:(NSString*)pName;
@end
