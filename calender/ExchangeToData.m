//
//  ExchangeToData.m
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "ExchangeToData.h"

@implementation ExchangeToData

+ (NSDate*)exchangeToDate:yaer manth:(NSString *)manth day:(NSString*)day hour:(NSString*)hour minite:(NSString*)minite;{
    NSDateFormatter *inputDateFormatter = [[NSDateFormatter alloc] init];
	[inputDateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSDate *date = [inputDateFormatter dateFromString:[NSString stringWithFormat:@"%@/%@/%@ %@:%@:00",yaer,manth,day,hour,minite]];
    
    return date;
}

@end
