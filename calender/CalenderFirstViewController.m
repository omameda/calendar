//
//  CalenderFirstViewController.m
//  calender
//
//  Created by seo hideki on 2013/12/02.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "CalenderFirstViewController.h"
<<<<<<< HEAD
#import "SEOAddEventViewController.h"
#import "SEOAddEventView.h"
=======
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd

@interface CalenderFirstViewController ()

@end

@implementation CalenderFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
<<<<<<< HEAD
    //iOS7以降であれば、ステータスバーをのぞいたフレームを取得
    if ([[[[UIDevice currentDevice] systemVersion]
          componentsSeparatedByString:@"."][0] intValue] >= 7) //iOS7 later
    {
        CGRect statusBarViewRect = [[UIApplication sharedApplication] statusBarFrame];
        float heightPadding = statusBarViewRect.size.height + self.navigationToolBar.frame.size.height;
        
        CGRect original = self.view.frame;
        
        CGRect new = CGRectMake(original.origin.x,  original.origin.y + heightPadding,
                                original.size.width,  original.size.height - heightPadding);
        
        self.view.frame = new;
    }
	// Do any additional setup after loading the view, typically from a nib.
    //tabBarの大きさを取り除いたサイズを所得
    CGSize size = self.tabBarController.tabBar.bounds.size;
    float viewHeight = self.view.bounds.size.height - size.height;
    float viewWidth = self.view.bounds.size.width;
    CGPoint origin = self.view.frame.origin;
    calenderView = [[DDCalendarView alloc]initWithFrame:CGRectMake(origin.x, origin.y, viewWidth, viewHeight) fontName:@"HelveticaNeue" delegate:self];
=======
	// Do any additional setup after loading the view, typically from a nib.
    calenderView = [[DDCalendarView alloc]initWithFrame:self.view.bounds fontName:@"AmericanTypewriter" delegate:self];
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd
    [self.view addSubview:calenderView];
}

- (void)dayButtonPressed:(DayButton *)button{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

<<<<<<< HEAD
- (IBAction)editBottonPush:(id)sender {
//    SEOAddEventViewController *viewController = [[SEOAddEventViewController alloc]initWithNibName:nil bundle:nil];
//    viewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//    [self presentViewController:viewController animated:YES completion:nil];
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    SEOAddEventViewController  *controller = [storyboard instantiateViewControllerWithIdentifier:@"seoView"];
//    [self presentModalViewController:controller animated:YES];
    SEOAddEventView *addView = [[SEOAddEventView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:addView];
    //[self.view bringSubviewToFront:addView];

    
}
=======
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd
@end
