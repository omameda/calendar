//
//  CalenderAppDelegate.h
//  calender
//
//  Created by seo hideki on 2013/12/02.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "CalenderThirdViewController.h"

@interface CalenderAppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property UITabBarController *tabBarController;
@property CalenderThirdViewController *viewController;

- (NSURL *)applicationDocumentsDirectory;
- (void) saveContext;
@property (strong, nonatomic) UIWindow *window;

@end
