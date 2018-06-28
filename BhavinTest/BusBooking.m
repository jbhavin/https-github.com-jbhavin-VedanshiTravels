//
//  BusBooking.m
//  BhavinTest
//
//  Created by bhavin joshi on 27/06/18.
//  Copyright © 2018 bhavin joshi. All rights reserved.
//

#import "BusBooking.h"

@interface BusBooking ()

@end

@implementation BusBooking

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)backbuttonclick:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
