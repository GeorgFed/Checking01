//
//  PurchasePlanViewController.h
//  interface 1.0 Checking
//
//  Created by Georg on 26.04.17.
//  Copyright © 2017 Georg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PurchasePlanViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate, UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *planListTableView;

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *shop;

- (IBAction)addButton:(id)sender;
- (IBAction)fillInButton:(id)sender;
- (IBAction)actionAddNewProduct:(id)sender;


@end
