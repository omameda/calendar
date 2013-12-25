//
//  CalenderAppDelegate.m
//  calender
//
//  Created by seo hideki on 2013/12/02.
//  Copyright (c) 2013年 seo hideki. All rights reserved.
//

#import "CalenderAppDelegate.h"


@implementation CalenderAppDelegate

<<<<<<< HEAD


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [_window makeKeyAndVisible];
    // Override point for customization after application launch.
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        // Load resources for iOS 6.1 or earlier
        

    } else {
        // Load resources for iOS 7 or later
    }
    self.window.backgroundColor = [UIColor whiteColor];
=======
@synthesize managedObjectContext = __managedObjectContext;
@synthesize managedObjectModel = __managedObjectModel;
@synthesize persistentStoreCoordinator = __persistentStoreCoordinator;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.viewController.manegedObjectContext = self.managedObjectContext;
    [_window addSubview:self.tabBarController.view];
    [_window makeKeyAndVisible];
    // Override point for customization after application launch.
>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

<<<<<<< HEAD
=======

//core Date program

// NSManagedObjectContextのインスタンスを作成するメソッド
- (NSManagedObjectContext *)loadManagedObjectContext {
    
    if (__managedObjectContext != nil)
        return __managedObjectContext;
    
    //シリアライズの情報を取得する
    NSPersistentStoreCoordinator *aCoodinator = [self persistentStoreCoordinator];
    if (aCoodinator != nil) {
        //オブジェクトコンテキストの作成
        __managedObjectContext = [[NSManagedObjectContext alloc] init];
        //シリアライズの情報に設定する
        [__managedObjectContext setPersistentStoreCoordinator:aCoodinator];
    }
    return __managedObjectContext;
}

// NSPersistentStoreCoordinatorインスタンスを作成するメソッド。
// NSManagedObjectContextを作成する際に必要となる。
// データ永続化の具体的な方法を実装しているが、
// 今回は、sqliteを用いたデータ永続化を行う。
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    
    if (__persistentStoreCoordinator != nil) {
        return __persistentStoreCoordinator;
    }
    
    //シリアライズ先のURLを作成する
    //ドキュメントディレクトリ内の「Event.sqlite」をファイルのURLに
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent: @"Event.sqlite"];
    //シリアライズの情報の作成
    NSError *error = nil;
    __persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    //SQliteを使って、変数「storeURL」が指すURLにシリアライズするように設定。
    if (![__persistentStoreCoordinator
          addPersistentStoreWithType:NSSQLiteStoreType
          configuration:nil
          URL:storeURL
          options:nil
          error:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return __persistentStoreCoordinator;
}

// NSManagedObjectModelのインスタンスを生成するクラス。
// 作成したモデル定義ファイルを読み込む。
- (NSManagedObjectModel *)managedObjectModel {
    
    if (__managedObjectModel != nil) {
        return __managedObjectModel;
    }
    //モデルファイルのパスを所得して、URLを作成する
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Event" withExtension:@"momd"];
    //モデルファイルを読み込む
    __managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    
    return __managedObjectModel;
}

- (NSURL *)applicationDocumentsDirectory {
    
    return [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]lastObject];
    
}

- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

>>>>>>> fcd9f4f2f6fde59114d779d1c5bbd311e2d3e1dd
@end
