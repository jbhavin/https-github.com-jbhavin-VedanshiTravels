//
//  subtableviewcell.h
//  BhavinTest
//
//  Created by bhavin joshi on 27/06/18.
//  Copyright © 2018 bhavin joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface subtableviewcell : UITableViewCell
@property (weak,nonatomic) IBOutlet UIImageView *trImage;
@property (weak,nonatomic) IBOutlet UILabel *lblPlace;
@property (weak,nonatomic) IBOutlet UILabel *lblDays;
@property (weak,nonatomic) IBOutlet UILabel *lbltransport;
@end
