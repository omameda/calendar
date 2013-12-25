//
//  SEOAddEventView.h
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCDate.h"
#import "SEOSetTable.h"

@protocol SEOAddEventViewDelegate <NSObject>

- (void)savePushed:(id)sender;
- (void)cancelPushed:(id)sender;
- (void)startTimeSet;
- (void)endTimeSet;
- (void)locationSet;

@end

@interface SEOAddEventView : UIView<UIPickerViewDelegate,SEOSetTableDelegate>{
    UITableView *tableView;
    UINavigationController *navigationControllor;
}

@property(nonatomic, assign) id <SEOAddEventViewDelegate> delegate;
@end
