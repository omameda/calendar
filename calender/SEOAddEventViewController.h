//
//  SEOAddEventViewController.h
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SEOAddEventView.h"
#import "SeoData.h"

@interface SEOAddEventViewController : UIViewController<SEOAddEventViewDelegate,SEOSetTableDelegate>{
    UIDatePicker *datePicker;
    SEOSetTable *tableView;
}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
- (IBAction)pushSaveButton:(id)sender;


@end
