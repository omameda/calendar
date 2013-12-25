//
//  DayButton.h
//  DDCalendarView
//
//  Created by Damian Dawber on 28/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
<<<<<<< HEAD
//cellの中の表示イベントの数
#define KEVENT_NUM 3.0
#define KEVENT_ALPHA 0.4f
=======
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd

@protocol DayButtonDelegate <NSObject>
- (void)dayButtonPressed:(id)sender;
@end

@interface DayButton : UIButton {
	id <DayButtonDelegate> delegate;
	NSDate *buttonDate;
}

@property (nonatomic, assign) id <DayButtonDelegate> delegate;
@property (nonatomic, copy) NSDate *buttonDate;
<<<<<<< HEAD
@property (nonatomic, retain)NSArray *event;

=======
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd

- (id)buttonWithFrame:(CGRect)buttonFrame;

@end
