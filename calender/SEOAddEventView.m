//
//  SEOAddEventView.m
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "SEOAddEventView.h"

#define EVENT_PADDING 10.0


@implementation SEOAddEventView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //ナビゲーションバー
        navigationControllor = [[UINavigationController alloc]init];
        navigationControllor.navigationBar.frame= CGRectMake(EVENT_PADDING, EVENT_PADDING, frame.size.width - EVENT_PADDING *2, 44);
       [self addSubview:navigationControllor.navigationBar];
        navigationControllor.title = @"予定作成";
        navigationControllor.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(didTapSaveButton)];
        navigationControllor.navigationItem.rightBarButtonItem.enabled = YES;
        
        
        self.layer.cornerRadius = 8.0f;
        
        //tableView
        CGRect tableRect = CGRectMake(EVENT_PADDING, navigationControllor.navigationBar.bounds.size.height + EVENT_PADDING, frame.size.width - EVENT_PADDING * 2 , frame.size.height - 44 -EVENT_PADDING*2);
        tableView = [[SEOSetTable alloc]initWithFrame:tableRect style:UITableViewStylePlain];
        [self addSubview:tableView];
        
    }
    return self;
}

-(void)didTapSaveButton{
    [self.delegate respondsToSelector:@selector(didTapSaveButton)];
}

-(void)startTimeSet{
    [self.delegate respondsToSelector:@selector(startTimeSet)];
}

-(void)endTimeSet{
    [self.delegate respondsToSelector:@selector(endTimeSet)];
}

-(void)locationSet{
    [self.delegate respondsToSelector:@selector(locationSet)];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
