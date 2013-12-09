//
//  CalenderThirdViewController.m
//  calender
//
//  Created by seo hideki on 2013/12/03.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "CalenderThirdViewController.h"

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)bottonPush:(id)sender {
}
@end
