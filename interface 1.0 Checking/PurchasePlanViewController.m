//
//  PurchasePlanViewController.m
//  interface 1.0 Checking
//
//  Created by Georg on 26.04.17.
//  Copyright © 2017 Georg. All rights reserved.
//

#import "PurchasePlanViewController.h"
#import "ProductModal.h"

@interface PurchasePlanViewController ()

@property (weak, nonatomic) NSMutableArray* products;

@end

@implementation PurchasePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.products count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"30.04.2017";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* identifier;
    
    if (indexPath.row == 0) {
        identifier = @"store";
    } else if (indexPath.row > 1) {
        identifier = @"waren";
    } else {
        identifier = @"enterItem";
        [self createTF];
    }
    
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    if (indexPath.row > 0) {
        self.name.text = [[self.products objectAtIndex:indexPath.row - 1] productName];
        self.price.text = [NSString stringWithFormat:@"%.2f", [[self.products objectAtIndex:indexPath.row - 1] priceProduct]];
    }
    
    
   // cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    
    //cell.textLabel.text
    
    return cell;
}

#pragma mark - UITableViewDelegate
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   // [self textFieldShouldEndEditing:[indexPath.row ]]
    [self resignFirstResponder];
  //  NSLog(@"%d %ld\n", indexPath.section, (long)indexPath.row);
}
*/

#pragma mark - UITextFieldDelegate

- (void)createTF {
    UITextField* itemField = [[UITextField alloc] initWithFrame:CGRectMake(24, 22, 250, 20)];
    itemField.text = @"Введите наименование товара";
    itemField.textColor = [UIColor blueColor];
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    textField.text = @"";
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    return YES;
}


#pragma Alert View

- (void)initAlert {
    ProductModal* product = [[ProductModal alloc] init];
    
    UIAlertController* alert= [UIAlertController alertControllerWithTitle:@"Введите Товар"
                                                                  message:@"Введите название и цену продукта" preferredStyle:UIAlertControllerStyleAlert];


    UIAlertAction* actionOK = [UIAlertAction actionWithTitle:@"Готово" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action){
                                                         NSLog(@"Название товара %@, Цена: %@", alert.textFields[0].text, alert.textFields[1].text);
                                                         
                                                     }];

    UIAlertAction* actionCancel = [UIAlertAction actionWithTitle:@"Отменить" style:UIAlertActionStyleCancel handler:nil];

    [alert addAction:actionOK];
    [alert addAction:actionCancel];

    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Название товара";
        product.productName = textField.text;
    }];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"Цена товара";
        product.priceProduct = [textField.text floatValue];
    }];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    [self.products addObject:product];
    
    [self.planListTableView beginUpdates];
    
    
    
    [self.planListTableView endUpdates];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)addButton:(id)sender {
    
}

- (IBAction)fillInButton:(id)sender {
}

- (IBAction)actionAddNewProduct:(id)sender {
    [self initAlert];
}

@end
