//
//  CalenderSecondViewController.m
//  calender
//
//  Created by seo hideki on 2013/12/02.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "CalenderSecondViewController.h"
#import "TSQCalendarRowCell.h"

@interface CalenderSecondViewController ()

@end

@implementation CalenderSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    TSQCalendarView *calendarView = [[TSQCalendarView alloc] initWithFrame:self.view.bounds];
    calendarView.rowCellClass = [TSQCalendarRowCell class];
    calendarView.firstDate = [NSDate date];
    calendarView.lastDate = [NSDate dateWithTimeIntervalSinceNow:60 * 60 * 24 * 365 * 5];
    calendarView.pagingEnabled = YES;
    calendarView.delegate = self;
    
    [self.view addSubview:calendarView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
