//
//  CommonTableView.m
//  MyExample
//
//  Created by Bhautik Mewada on 6/4/14.
//  Copyright (c) 2014 True Swan Software. All rights reserved.
//

#import "CommonTableView.h"

@implementation CommonTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    
    
    return self;
}

/** Implement tableView With delegate method & dataSource Method*/
-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView,NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow
{
    self.delegate = self;
    self.dataSource = self;
    
    self.tableViewCell = tableCell;
    self.didSelectRow = selectRow;
    _sectionCount = sections;
    _rowCount = rows;
    _heightOfRow = 44;
}

/** Implement tableView With delegate method & dataSource Method*/
-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView,NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow heightForRowAtIndexPath:(CGFloat)rowHeight
{
    self.delegate = self;
    self.dataSource = self;
    
    self.tableViewCell = tableCell;
    self.didSelectRow = selectRow;
    _sectionCount = sections;
    _rowCount = rows;
    _heightOfRow = rowHeight;
}

#pragma mark TableView DataSource Methods

/** number of Sections */
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _sectionCount;
}

/** number of Rows In Sections */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _rowCount;
}

#pragma mark TableView Delegate Methods

/** set Value at Paricular Row */
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.tableViewCell(tableView,indexPath);
}

/** select row at Paricular Index */
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.didSelectRow(indexPath);
}

/** set height for Row at IndexPath */
-(CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return _heightOfRow;
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
