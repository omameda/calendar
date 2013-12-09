//
//  CalenderFirstViewController.m
//  calender
//
//  Created by seo hideki on 2013/12/02.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "CalenderFirstViewController.h"

@interface CalenderFirstViewController ()

@end

@implementation CalenderFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    calenderView = [[DDCalendarView alloc]initWithFrame:self.view.bounds fontName:@"AmericanTypewriter" delegate:self];
    [self.view addSubview:calenderView];
}

- (void)dayButtonPressed:(DayButton *)button{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
