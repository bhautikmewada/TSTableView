CommonTableView
===============

just call block method to fill UITableView

/**property for TableViewCell block*/

```@property(nonatomic,copy) UITableViewCell *(^tableViewCell)(UITableView *tableView, NSIndexPath *indexPath);```

/**property for didSelectRow block*/

```@property(nonatomic,copy) void (^didSelectRow) (NSIndexPath *indexPath);```

/**count of section & row of TableView*/

```@property(nonatomic,readonly)NSInteger sectionCount,rowCount;```

/**height of row at indexPath*/

```@property(nonatomic,readonly)CGFloat heightOfRow;```

/** Implement tableView With delegate method & dataSource Method*/

```-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView, NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow;```

/** Implement tableView With delegate method & dataSource Method*/

```-(void)tableViewWithNumberOfSections:(NSInteger)sections numberOfRowsInSection:(NSInteger)rows tableViewCell:(UITableViewCell *(^)(UITableView *tableView, NSIndexPath *indexPath))tableCell didSelectRowAtPath:(void(^)(NSIndexPath *indexPath))selectRow heightForRowAtIndexPath:(CGFloat)rowHeight;```



/**How to use*/

    [tableView tableViewWithNumberOfSections:_numberOfSection numberOfRowsInSection:_numberOfRowInSection    tableViewCell:^UITableViewCell *(UITableView *tableView,NSIndexPath *indexPath){

        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        /**cell operation here*/
        return cell;
        
    } didSelectRowAtPath:^(NSIndexPath *indexPath){
        
        /**call when cell selected at Index*/
    } ];```


/**cell height block.*/

    [tableView tableViewWithNumberOfSections:_numberOfSection numberOfRowsInSection:_numberOfRowInSection    tableViewCell:^UITableViewCell *(UITableView *tableView,NSIndexPath *indexPath){

        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        /**cell operation here*/
        return cell;
        
    } didSelectRowAtPath:^(NSIndexPath *indexPath){
        
        /**call when cell selected at Index*/
        
        } heightForRowAtIndexPath:^CGFloat(NSIndexPath *indexPath){
        
        /** set dynamic height of cell*/
        
        }];```

For more support you can mail me: bhautik.mewada@gmail.com.
True Swan Software.
