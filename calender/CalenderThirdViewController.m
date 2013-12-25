//
//  CalenderThirdViewController.m
//  calender
//
//  Created by seo hideki on 2013/12/03.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "CalenderThirdViewController.h"
#import "DCDate.h"

@interface CalenderThirdViewController ()

@end

@implementation CalenderThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //_manegedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    //NSLog(@"After managedObjectContext: %@",  __managedObjectContext);
   // SEOPickerView *pickerView = [[SEOPickerView alloc]init];
    //[self.view addSubview:pickerView.view];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *date = [dateFormatter stringFromDate:[NSDate date]];
    UIDatePicker *datePicker = [DCDate picker:self rect:CGRectMake(0, self.view.frame.size.height - 210, 320, 210)
                                         mode:UIDatePickerModeDateAndTime minuteInterval:10
                                     dateText:date dateFormat:[dateFormatter dateFormat]
                                       action:@selector(pickerChanged:)];
    datePicker.tag = 123;
    [self.view addSubview:datePicker];
}

-(void)pickerChanged:(id)sender{
    UIDatePicker *datePicker = (UIDatePicker *)sender;
    NSString *str=[NSString stringWithFormat:@"%d",[DCDate pickerDay]];
    [self.botton setTitle:str forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)bottonPush:(id)sender {
    UIView *view;
    for (view in [self.view subviews]) {
        if (view.tag == 123) {
            if (view.hidden == NO) {
            view.hidden = YES;
            break;
            }else{
                view.hidden = NO;
                break;
            }
        }
    }
}

@end
