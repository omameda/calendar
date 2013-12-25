//
//  ExchangeToData.h
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExchangeToData : NSObject

+ (NSDate*)exchangeToDate:yaer manth:(NSString *)manth day:(NSString*)day hour:(NSString*)hour minite:(NSString*)minite;

@end
