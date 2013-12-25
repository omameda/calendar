#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface DCCoreData : NSObject {
    NSManagedObjectContext *managedObjectContext_;
    NSManagedObjectModel *managedObjectModel_;
    NSPersistentStoreCoordinator *persistentStoreCoordinator_;
}

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (DCCoreData*)sharedInstance;
- (NSURL *)applicationDocumentsDirectory;
- (void)saveContext;

@end