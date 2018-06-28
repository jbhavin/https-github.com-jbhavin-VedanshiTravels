//
//  homepage.m
//  BhavinTest
//
//  Created by bhavin joshi on 27/06/18.
//  Copyright © 2018 bhavin joshi. All rights reserved.
//

#import "homepage.h"
#import "TableViewCell.h"
#import "SubDetail.h"
#import "BusBooking.h"

@interface homepage ()

@end

@implementation homepage{
    
    int ImageCount;
}
@synthesize arrIage,arrType,arrMainImages,DisplayImage,imagetimer;
- (void)viewDidLoad {
    [super viewDidLoad];
    ImageCount = 0;
    self.navigationController.navigationBar.hidden = true;
    arrType = [[NSMutableArray alloc] initWithObjects:@"Family",@"Couple",@"Bus Booking",nil];
    arrIage = [[NSMutableArray alloc] initWithObjects:@"familytour.jpeg",@"coupletour.jpeg",@"booking.jpeg",nil];
    arrMainImages = [[NSMutableArray alloc] initWithObjects:@"delhi.jpeg",@"Kutch.jpeg",@"kerela.jpeg",@"Goa.jpeg",@"manali.jpeg", nil];
    [_tableview reloadData];
    imagetimer = [NSTimer scheduledTimerWithTimeInterval: 2.0 target:self selector:@selector(LoadImages) userInfo:nil repeats: YES];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)LoadImages{
    
    DisplayImage.image =[UIImage imageNamed:[arrMainImages objectAtIndex:ImageCount]];
    
    if(ImageCount == arrMainImages.count-1){
        ImageCount = 0;
    }
    else{
        ImageCount = ImageCount + 1;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.trLabel.text = [arrType objectAtIndex:indexPath.row];
    cell.trImage.image = [UIImage imageNamed:[arrIage objectAtIndex:indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrType.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0 || indexPath.row == 1){
    
        SubDetail *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"SubDetail"];
        [self.navigationController pushViewController:newView animated:YES];
    }
    else{
        BusBooking *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"BusBooking"];
        [self.navigationController pushViewController:newView animated:YES];
    }
    
}





@end
