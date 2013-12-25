//
//  SEOAddEventViewController.m
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "SEOAddEventViewController.h"
#import "SEOAddEventView.h"
#import "SEOSetTable.h"
#import "DCDate.h"

@interface SEOAddEventViewController ()

@end

@implementation SEOAddEventViewController

- (id)init
{
    self = [super init];
    if (self) {
//        CGRect viewFrame =  self.navigationController.navigationBar.frame;
//        CGRect rect = CGRectMake(viewFrame.origin.x, viewFrame.origin.y, viewFrame.size.width, viewFrame.size.height - viewFrame.origin.y);
//        SEOSetTable *tableView = [[SEOSetTable alloc]initWithFrame:rect style:UITableViewStylePlain];
//        [self hideTabBar:self.tabBarController];
//        [self.view addSubview:tableView];
        //データピッカーの表示
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//        NSString *date = [dateFormatter stringFromDate:[NSDate date]];
//        UIDatePicker *datePicker = [DCDate picker:self rect:CGRectMake(0, self.view.frame.size.height - 300, 320, 210)
//                                             mode:UIDatePickerModeDateAndTime minuteInterval:10
//                                         dateText:date dateFormat:[dateFormatter dateFormat]
//                                           action:@selector(pickerChanged:)];
//        datePicker.tag = 123;
//        datePicker.hidden = NO;
//        [self.view addSubview:datePicker];
//        [self.view bringSubviewToFront:datePicker];

    }
    return self;
}

-(void)pickerChanged:(id)sender{
    UIDatePicker *datePicker = (UIDatePicker *)sender;
//    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
//	[formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSString *format = [NSString stringWithFormat:@"yyyy/MM/dd HH:mm"];
    NSString *str=[DCDate dateText:format];
    [tableView changeCellValue:str];
    
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGRect viewFrame =  self.navigationController.navigationBar.frame;
    CGSize viewSize = self.view.frame.size;
    CGRect rect = CGRectMake(viewFrame.origin.x, viewFrame.origin.y + viewFrame.size.height, viewSize.width, viewSize.height - viewFrame.origin.y);
    tableView = [[SEOSetTable alloc]initWithFrame:rect style:UITableViewStylePlain];
    [self hideTabBar:self.tabBarController];
    [self.view addSubview:tableView];
    tableView.seodelegate = self;
    //データピッカーの表示
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *date = [dateFormatter stringFromDate:[NSDate date]];
    datePicker = [DCDate picker:self rect:CGRectMake(0, self.view.frame.size.height - 300, 320, 210)
                                         mode:UIDatePickerModeDateAndTime minuteInterval:10
                                     dateText:date dateFormat:[dateFormatter dateFormat]
                                       action:@selector(pickerChanged:)];
    datePicker.tag = 123;
    datePicker.hidden = YES;
    [self.view addSubview:datePicker];
    [self.view bringSubviewToFront:datePicker];
}

-(void)hideTabBar:(UITabBarController *)tabBarController{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    
    for(UIView *view in tabBarController.view.subviews)
    {
        if([view isKindOfClass:[UITabBar class]])
        {
            [view setFrame:CGRectMake(view.frame.origin.x, 480, view.frame.size.width, view.frame.size.height)];
        }
        else
        {
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 480)];
        }
    }
    
    [UIView commitAnimations];
}

- (void)showTabBar:(UITabBarController *) tabbarcontroller
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5];
    for(UIView *view in tabbarcontroller.view.subviews)
    {
        NSLog(@"%@", view);
        
        if([view isKindOfClass:[UITabBar class]])
        {
            [view setFrame:CGRectMake(view.frame.origin.x, 431, view.frame.size.width, view.frame.size.height)];
            
        }
        else
        {
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, 431)];
        }
    }
    
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated{
    [self showTabBar:self.tabBarController];
}

- (void)startTimeSet{
    if (datePicker.hidden == NO) {
        datePicker.hidden = YES;
    }else if(datePicker.hidden == YES){
        datePicker.hidden = NO;
    }
}

- (void)endTimeSet{
    
}

-(void)locationSet{
    
}

-(void)savePushed:(id)sender{
    
}
- (IBAction)pushSaveButton:(id)sender {
    NSManagedObject *insertManagedObject = [SeoData entityForInsert:@"SeoEntity"];
    
    [insertManagedObject setValue:string forKey:@"name"];
    
    [SEODATA saveContext];
}
@end
