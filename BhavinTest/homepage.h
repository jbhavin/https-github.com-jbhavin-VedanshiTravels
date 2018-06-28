//
//  homepage.h
//  BhavinTest
//
//  Created by bhavin joshi on 27/06/18.
//  Copyright © 2018 bhavin joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface homepage : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;
@property (strong,nonatomic) NSMutableArray *arrType;
@property (strong,nonatomic) NSMutableArray *arrIage;
@property (strong,nonatomic) NSTimer *imagetimer;
@property (strong,nonatomic) NSMutableArray *arrMainImages;
@property (weak, nonatomic) IBOutlet UIImageView *DisplayImage;

@end

