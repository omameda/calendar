//
//  DayButton.m
//  DDCalendarView
//
//  Created by Damian Dawber on 28/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DayButton.h"


@implementation DayButton
@synthesize delegate, buttonDate;

- (id)buttonWithFrame:(CGRect)buttonFrame {
	self = [DayButton buttonWithType:UIButtonTypeCustom];
	
	self.frame = buttonFrame;
	self.titleLabel.textAlignment = UITextAlignmentRight;
	self.backgroundColor = [UIColor clearColor];
    //ボタンの枠線
    [[self layer]setBorderColor:[[UIColor grayColor ] CGColor]];
    [[self layer]setBorderWidth:1.0];
	[self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
	
	[self addTarget:delegate action:@selector(dayButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
	
	return self;
}

//日付の位置指定
//変更12/10
- (void)layoutSubviews {
	[super layoutSubviews];
	
	UILabel *titleLabel = [self titleLabel];
	CGRect labelFrame = titleLabel.frame;
	int framePadding = 4;
	labelFrame.origin.x = self.bounds.size.width - labelFrame.size.width - framePadding;
	labelFrame.origin.y = framePadding;
    [self.titleLabel setTag:123];
	
	[self titleLabel].frame = labelFrame;
    //初期化
    for(UIView *view in self.subviews){
        if (view.tag == 123) {
            continue;
        }
        [view removeFromSuperview];
    }
    if (self.event != nil) {
    float cellHeight = self.bounds.size.height;
    float cellWidth = self.bounds.size.width;
        NSString *event = [self.event objectAtIndex:0];
        if (event == nil) {
    UILabel *eventLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, labelFrame.size.height, cellWidth, cellHeight /KEVENT_NUM )];
    
    eventLabel.backgroundColor = [UIColor redColor];
    eventLabel.text = event;
    eventLabel.alpha = KEVENT_ALPHA;
    [self addSubview:eventLabel];
        }
    }
}

- (void)eventSubviews{
}

- (void)dealloc {
    [super dealloc];
}


@end
