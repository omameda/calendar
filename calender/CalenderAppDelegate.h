//
//  CalenderAppDelegate.h
//  calender
//
//  Created by seo hideki on 2013/12/02.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import <UIKit/UIKit.h>
<<<<<<< HEAD
=======
#import <CoreData/CoreData.h>
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd
#import "CalenderThirdViewController.h"

@interface CalenderAppDelegate : UIResponder <UIApplicationDelegate>

<<<<<<< HEAD
@property (strong, nonatomic) UIWindow *window;



=======
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property UITabBarController *tabBarController;
@property CalenderThirdViewController *viewController;

- (NSURL *)applicationDocumentsDirectory;
- (void) saveContext;
@property (strong, nonatomic) UIWindow *window;
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd

@end
