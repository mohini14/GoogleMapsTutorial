//
//  SearchView.m
//  GoogleMapsTutorial
//
//  Created by Anas MD on 3/1/17.
//  Copyright © 2017 Anas MD. All rights reserved.
//

#import "SearchView.h"
@implementation SearchView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    //  // Drawing code
}
*/


+(instancetype) loadXIB{
    SearchView *searchView =  [[[NSBundle mainBundle]loadNibNamed:@"SearchView" owner:self options:nil]firstObject];
    searchView.tableView.delegate = searchView ;
    searchView.tableView.dataSource = searchView ;
    searchView.dataArray = @[@"Place1", @"Place2", @"Place3"];
    GMSAutocompleteViewController *acController = [[GMSAutocompleteViewController alloc] init];
    acController.delegate = self;

    return searchView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}


@end
