//
//  CalenderFirstViewController.h
//  calender
//
//  Created by seo hideki on 2013/12/02.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDCalendarView.h"

@interface CalenderFirstViewController : UIViewController<DDCalendarViewDelegate>{
    DDCalendarView *calenderView;
}

@end
