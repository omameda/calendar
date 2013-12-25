//
//  CalenderThirdViewController.h
//  calender
//
//  Created by seo hideki on 2013/12/03.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface CalenderThirdViewController : UIViewController<UIPickerViewDelegate>{
}


@property (weak, nonatomic) IBOutlet UIButton *botton;
- (IBAction)bottonPush:(id)sender;


@end
