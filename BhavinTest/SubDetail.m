//
//  SubDetail.m
//  BhavinTest
//
//  Created by bhavin joshi on 27/06/18.
//  Copyright © 2018 bhavin joshi. All rights reserved.
//

#import "SubDetail.h"
#import "subtableviewcell.h"

@interface SubDetail ()

@end

@implementation SubDetail
@synthesize arrDays,arrImages,arrPlaceName,arrTransPort;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrPlaceName = [[NSMutableArray alloc] initWithObjects:@"delhi",@"Kutch",@"kerela",@"Goa",@"manali",@"delhi",@"Kutch",@"kerela",@"Goa",@"manali", nil];
    arrTransPort = [[NSMutableArray alloc] initWithObjects:@"AC bus",@"AC bus",@"AC bus",@"flight",@"train",@"car",@"flight",@"Non AC bus",@"car",@"bike", nil];
    arrDays = [[NSMutableArray alloc] initWithObjects:@"07",@"08",@"10",@"05",@"12",@"04",@"08",@"06",@"14",@"09", nil];
    arrImages = [[NSMutableArray alloc] initWithObjects:@"delhi.jpeg",@"Kutch.jpeg",@"kerela.jpeg",@"Goa.jpeg",@"manali.jpeg",@"delhi.jpeg",@"Kutch.jpeg",@"kerela.jpeg",@"Goa.jpeg",@"manali.jpeg", nil];
    
    // Do any additional setup after loading the view.
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
- (IBAction)backbuttonclick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    subtableviewcell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.trImage.image = [UIImage imageNamed:[arrImages objectAtIndex:indexPath.row]];
    cell.lblPlace.text = [arrPlaceName objectAtIndex:indexPath.row];
    cell.lblDays.text = [arrDays objectAtIndex:indexPath.row];
    cell.lbltransport.text = [arrTransPort objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrTransPort.count;
}



@end
