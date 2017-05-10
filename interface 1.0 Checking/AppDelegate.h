//
//  AppDelegate.h
//  interface 1.0 Checking
//
//  Created by Georg on 24.03.17.
//  Copyright © 2017 Georg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

