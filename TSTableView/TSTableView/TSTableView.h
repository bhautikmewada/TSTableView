//
//  TSTableView.h
//  MyExample
//
//  Created by Bhautik Mewada on 6/4/14.
//  Copyright (c) 2014 True Swan Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TSTableView : UITableView<UITableViewDataSource,UITableViewDelegate>

/** property for TableViewCell block */
@property(nonatomic,copy) UITableViewCell *(^tableViewCell)(UITableView *tableView,NSIndexPath *indexPath);

/** property for didSelectRow block */
@property(nonatomic,copy) void (^didSelectRow) (NSIndexPath *indexPath);

@property(nonatomic,copy) CGFloat (^heightForRowAtIndex) (NSIndexPath *indexPath);

/** count of section & row of TableView */
@property(nonatomic,readonly)NSInteger sectionCount,rowCount;

/** height of row at indexPath */
//@property(nonatomic,readonly)CGFloat heightOfRow;

/** Implement tableView With delegate method & dataSource Method*/
-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView,NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow;

/** Implement tableView With delegate method & dataSource Method*/
-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView,NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow heightForRowAtIndexPath:(CGFloat (^)(NSIndexPath *indexPath))rowHeight;

@end
