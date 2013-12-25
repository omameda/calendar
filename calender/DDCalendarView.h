//
//  DDCalendarView.h
//  DDCalendarView
//
//  Created by Damian Dawber on 28/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DayButton.h"
<<<<<<< HEAD
#define KNUM_CELL_HEIGHT 6.0f
#define KDAY_LABEL_HEIGHT_RATE 26.0f
=======
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd

@protocol DDCalendarViewDelegate <NSObject>
- (void)dayButtonPressed:(DayButton *)button;

@optional
- (void)prevButtonPressed;
- (void)nextButtonPressed;

@end

@interface DDCalendarView : UIView <DayButtonDelegate> {
	id <DDCalendarViewDelegate> delegate;
	NSString *calendarFontName;
	UILabel *monthLabel;
	NSMutableArray *dayButtons;
	NSCalendar *calendar;
	float calendarWidth;
	float calendarHeight;
<<<<<<< HEAD
    float dayLabelHeight;
=======
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd
	float cellWidth;
	float cellHeight;
	int currentMonth;
	int currentYear;
}

@property(nonatomic, assign) id <DDCalendarViewDelegate> delegate;

- (id)initWithFrame:(CGRect)frame fontName:(NSString *)fontName delegate:(id)theDelegate;
- (void)updateCalendarForMonth:(int)month forYear:(int)year;
- (void)drawDayButtons;
- (void)prevBtnPressed:(id)sender;
- (void)nextBtnPressed:(id)sender;

@end
