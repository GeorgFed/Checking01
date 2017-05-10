//
//  CostViewController.h
//  interface 1.0 Checking
//
//  Created by Александр Галкин on 12.04.17.
//  Copyright © 2017 Georg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CostViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *purchasedItems;

@end
