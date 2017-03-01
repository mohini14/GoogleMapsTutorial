//
//  ViewController.h
//  GoogleMapsTutorial
//
//  Created by Anas MD on 3/1/17.
//  Copyright © 2017 Anas MD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GMSMapView.h"

@class SearchView;

@interface ViewController : UIViewController<GMSMapViewDelegate>

@property (strong, nonatomic) IBOutlet UIView *mapContainerView;

@property (strong, nonatomic) IBOutlet UIView *searchSideBar;

@property(nonatomic, strong) SearchView *searchBarView;

- (IBAction)searchButtonPressed:(UIBarButtonItem *)sender;

@end

