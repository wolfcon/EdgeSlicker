//
//  TableViewDataSource.m
//  SlickerDemo
//
//  Created by Frank on 31/05/2017.
//  Copyright © 2017 Frank. All rights reserved.
//

#import "TableViewDataSource.h"

@implementation TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellIdentifier"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Text : %ld", indexPath.row];
    
    return cell;
}

@end
