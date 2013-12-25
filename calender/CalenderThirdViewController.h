//
//  CalenderThirdViewController.h
//  calender
//
//  Created by seo hideki on 2013/12/03.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

<<<<<<< HEAD
@interface CalenderThirdViewController : UIViewController<UIPickerViewDelegate>{
}


@property (weak, nonatomic) IBOutlet UIButton *botton;
- (IBAction)bottonPush:(id)sender;


=======
@interface CalenderThirdViewController : UIViewController{
}
@property NSManagedObjectContext *manegedObjectContext;
@property (strong, nonatomic) IBOutlet UIButton *botton;
- (IBAction)bottonPush:(id)sender;

>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd
@end
