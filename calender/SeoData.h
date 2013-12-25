//
//  SeoData.h
//  coreDataTest
//
//  Created by seohideki on 2013/12/17.
//  Copyright (c) 2013年 seohideki. All rights reserved.
//

#import "DCCoreData.h"
#import <CoreData/CoreData.h>

@interface SeoData : DCCoreData

- (NSMutableArray*)all:(NSString*)entityName;
- (NSMutableArray*)fetch:(NSString*)entityName limit:(int)limit;
- (NSManagedObject*)entityForInsert:(NSString*)entityname;

@end
