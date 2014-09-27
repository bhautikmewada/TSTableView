//
//  ViewController.m
//  TSTableView
//
//  Created by True Swan1 on 25/09/14.
//  Copyright (c) 2014 True Swan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView tableViewWithNumberOfSections:1 numberOfRowsInSection:10 tableViewCell:^UITableViewCell*(UITableView *tableView,NSIndexPath *indexPath){
        
        NSString *img = [NSString stringWithFormat:@"%ld",indexPath.row + 1];
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:img];
        
        if(!cell)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:img];
            cell.textLabel.text = [NSString stringWithFormat:@"cell %@", img];
            NSLog(@"%@",[NSString stringWithFormat:@"%ld",indexPath.row + 1]);
        }
        return cell;
        
        return cell;
    } didSelectRowAtPath:^(NSIndexPath *indexPath){
        
        NSLog(@"%@",[NSString stringWithFormat:@"%ld.png",(long)indexPath.row+1]);
        
        
    } heightForRowAtIndexPath:^CGFloat(NSIndexPath *indexPath){
        
        return 44;
        
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
