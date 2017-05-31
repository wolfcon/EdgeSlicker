//
//  ViewController.m
//  SlickerDemo
//
//  Created by Frank on 31/05/2017.
//  Copyright © 2017 Frank. All rights reserved.
//

#import "ViewController.h"
#import "UIView+EdgeSlicker.h"
#import "TableViewDataSource.h"

@interface ViewController () <UIScrollViewDelegate, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) CGPoint referencedOffset;
@property (nonatomic, strong) TableViewDataSource *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleTopMargin | UIViewContentModeLeft;
    
    _tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
    
    [self.view addSubview:self.tableView];
    
    _dataSource = [TableViewDataSource new];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self.dataSource;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    if ([scrollView isEqual:self.tableView]) {
        self.referencedOffset = scrollView.contentOffset;
    }
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
    if ([scrollView isEqual:self.tableView]) {
        [self.tabBarController.tabBar respondingScrollViewDidEndDragging];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if ([scrollView isEqual:self.tableView]) {
        [self.tabBarController.tabBar viewDidRespondAutoHideWhenScrollView:scrollView beginDraggingContentOffset:self.referencedOffset];
    }
}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    if ([scrollView isEqual:self.tableView]) {
        [self.tabBarController.tabBar respondingScrollViewDidScrollToTop];
    }
}

@end
