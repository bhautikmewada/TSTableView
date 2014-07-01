CommonTableView
===============

just call block method to fill UITableView


/** property for TableViewCell block */
@property(nonatomic,copy) UITableViewCell *(^tableViewCell)(UITableView *tableView,NSIndexPath *indexPath);

/** property for didSelectRow block */
@property(nonatomic,copy) void (^didSelectRow) (NSIndexPath *indexPath);

/** count of section & row of TableView */
@property(nonatomic,readonly)NSInteger sectionCount,rowCount;

/** height of row at indexPath */
@property(nonatomic,readonly)CGFloat heightOfRow;

/** Implement tableView With delegate method & dataSource Method*/
-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView,NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow;

/** Implement tableView With delegate method & dataSource Method*/
-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView,NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow heightForRowAtIndexPath:(CGFloat)rowHeight;



/**How to use */

    [tableView tableViewWithNumberOfSections:numberOfSection numberOfRowsInSection:numberOfRow tableViewCell:^UITableViewCell *(UITableView *tableView,NSIndexPath *indexPath){
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        /* make operations on cell */
        return cell;
        
    } didSelectRowAtPath:^(NSIndexPath *indexPath){
        /* call when select row from UITableView*/
    }];


/** 
Description: block with height for rowAtIndex, 

height is not Dynamic, i am working on that.
*/
    [tableView tableViewWithNumberOfSections:numberOfSection numberOfRowsInSection:numberOfRow tableViewCell:^UITableViewCell *(UITableView *tableView,NSIndexPath *indexPath){
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        /* make operations on cell */
        return cell;
        
    } didSelectRowAtPath:^(NSIndexPath *indexPath){
        /* call when select row from UITableView*/
    } heightForRowAtIndexPath:44.f];
 

You can also send me mail bhautik.mewada@gmail.com if you have any question.
