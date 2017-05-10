//
//  CostViewController.m
//  interface 1.0 Checking
//
//  Created by Александр Галкин on 12.04.17.
//  Copyright © 2017 Georg. All rights reserved.
//

#import "CostViewController.h"

@interface CostViewController ()

@end

@implementation CostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIColor
    
    //self.purchasedItems.backgroundColor =
//    self.purchasedItems.rowHeight = 65;
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"30.04.2017";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* identifier;
    
    if (indexPath.row == 0) {
        identifier = @"store";
        
    } else if (indexPath.row < 3) {
        identifier = @"waren";
    } else {
        identifier = @"result";
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];

    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0 || indexPath.row == 3) {
        return 36;
    } else {
        return 65;
    }
    
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
