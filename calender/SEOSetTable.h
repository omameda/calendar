//
//  SEOSetTable.h
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SEOSetTableDelegate <NSObject>

-(void)startTimeSet;
-(void)endTimeSet;
-(void)locationSet;
@optional

@end

typedef enum{
    INVALID,
    STARTEDIT,
    ENDEDIT,
}EDITTYPE;

@interface SEOSetTable : UITableView<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>{
    NSArray *itemArray;
    NSInteger editing;
}

@property (nonatomic,assign)id <SEOSetTableDelegate> seodelegate;
- (void)changeCellValue:(NSString *)str;
@end
