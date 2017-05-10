//
//  ProductModal.h
//  interface 1.0 Checking
//
//  Created by Georg on 05.05.17.
//  Copyright © 2017 Georg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ProductModal : NSObject

@property (assign, nonatomic) float priceProduct;
@property (weak, nonatomic) NSString* productName;
@property (assign, nonatomic) float weight;
@property (assign, nonatomic) int numberOfProducts;
@property (assign, nonatomic) BOOL bought;
@property (weak, nonatomic) UIImageView* imageForProduct;

@end
