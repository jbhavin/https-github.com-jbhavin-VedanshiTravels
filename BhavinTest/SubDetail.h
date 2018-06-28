//
//  SubDetail.h
//  BhavinTest
//
//  Created by bhavin joshi on 27/06/18.
//  Copyright © 2018 bhavin joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubDetail : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (strong, nonatomic) NSMutableArray *arrPlaceName;
@property (strong, nonatomic) NSMutableArray *arrDays;
@property (strong, nonatomic) NSMutableArray *arrTransPort;
@property (strong, nonatomic) NSMutableArray *arrImages;

@end
