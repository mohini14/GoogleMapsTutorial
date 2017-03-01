//
//  SearchView.h
//  GoogleMapsTutorial
//
//  Created by Anas MD on 3/1/17.
//  Copyright © 2017 Anas MD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GMSAutocompleteViewController.h"

@interface SearchView : UIView<UITableViewDataSource, UITableViewDelegate, GMSAutocompleteViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic, strong) NSArray *dataArray;

+ (instancetype)loadXIB;
@end
