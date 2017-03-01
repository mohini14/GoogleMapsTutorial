//
//  ViewController.m
//  GoogleMapsTutorial
//
//  Created by Anas MD on 3/1/17.
//  Copyright © 2017 Anas MD. All rights reserved.
//

#import "ViewController.h"
#import "GoogleMaps/GoogleMaps.h"
#import "SearchView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.searchSideBar setHidden:YES];

    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86 longitude:151.20 zoom:12];

    GMSMapView * mapView_ = [GMSMapView mapWithFrame:self.mapContainerView.bounds camera:camera];
    mapView_.delegate = self;
     mapView_.myLocationEnabled = YES;
     //add the view as a subView of the Map Container View(UIView)
     [self.mapContainerView insertSubview:mapView_ atIndex:0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)searchButtonPressed:(UIBarButtonItem *)sender {
    if(self.searchBarView == nil) {
        self.searchBarView = [SearchView loadXIB];
        self.searchBarView.frame = self.searchSideBar.frame;
        [self.searchSideBar addSubview:self.searchBarView];
    }
    [[self searchSideBar]setHidden:NO];

}

-(void)mapView:(GMSMapView *)mapView didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
    NSLog(@"Simple click");
    [self.searchSideBar setHidden:YES];
}
@end
