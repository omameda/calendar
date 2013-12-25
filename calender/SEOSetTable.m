//
//  SEOSetTable.m
//  calender
//
//  Created by seohideki on 2013/12/18.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "SEOSetTable.h"

@implementation SEOSetTable
@synthesize seodelegate;

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if (self = [super initWithFrame:frame style:style]) {
        self.rowHeight = 50.0;
        self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        self.tableFooterView.hidden = YES;
        self.tableHeaderView.hidden = YES;
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}

-(void)setTime{
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    itemArray = [[NSArray alloc] initWithObjects:@"Spade", @"Club", @"Diamond", @"Heart", nil];
    return [itemArray count];
}


//セルがタップされたときにコールされるメソッド
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
   //itemArray の指定番目の文字列をステータスバーのラベルにセット
    //[indexPath row]で、何行目のセルがタップされたかを取得
    //textLabel.text = [itemArray objectAtIndex:[indexPath row]];
    switch (indexPath.row) {
        case 0:
            break;
        case 1:
            
            if ([seodelegate respondsToSelector:@selector(startTimeSet)]){
                [seodelegate startTimeSet];
                editing = STARTEDIT;
            }
            break;
        case 2:
            [self.delegate respondsToSelector:@selector(endTimeSet)];
            break;
        case 3:
            [self.delegate respondsToSelector:@selector(locationSet)];
        default:
            break;
    }
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    if(section == 0) {
        return 4; // 1個目のセクションのセルは3個とします
    }
    return 0;
}

//tableviewの作成
-(UITableViewCell *)tableView:
(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITextField *passTextFld;
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    if (indexPath.row == 0) {
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    UIFont *textFont = [UIFont systemFontOfSize:17.0];
        // テキスト
        passTextFld = [[UITextField alloc] initWithFrame:cell.frame];
        passTextFld.delegate = self;
        [passTextFld setFont:textFont];
        passTextFld.autocapitalizationType = UITextAutocapitalizationTypeNone;
        passTextFld.clearButtonMode = UITextFieldViewModeWhileEditing;
    }
        if (indexPath.row == 0)
        {
            passTextFld.placeholder = @"ユーザーID";
            passTextFld.textAlignment = NSTextAlignmentCenter;
            passTextFld.returnKeyType = UIReturnKeyNext;
            passTextFld.secureTextEntry = NO;
        }
    if(indexPath.section == 0) {
        if(indexPath.row == 1){
            cell.textLabel.text = @"開始";
        } else if(indexPath.row == 2){
            cell.textLabel.text = @"終了";
        } else if(indexPath.row == 3){
            cell.textLabel.text = @"場所";
        }
    } else {
        NSString *str = [[NSString alloc] initWithFormat:@"セクション%d 行%d",indexPath.section,indexPath.row];
        cell.textLabel.text = str;
    }
    [cell.contentView addSubview:passTextFld];
    return cell;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    [theTextField resignFirstResponder];
    　　return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [textField resignFirstResponder];
}

- (void)changeCellValue:(NSString *)str{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:editing inSection:0];
    UITableViewCell *cell = [self cellForRowAtIndexPath:indexPath];
    cell.detailTextLabel.text = str;
}

@end
