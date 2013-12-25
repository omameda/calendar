//
//  SeoData.m
//  coreDataTest
//
//  Created by seohideki on 2013/12/17.
//  Copyright (c) 2013年 seohideki. All rights reserved.
//

#import "SeoData.h"



@implementation SeoData
#pragma mark -
#pragma mark entity access method

- (NSMutableArray*)fetch:(NSString*)entityName limit:(int)limit {
	NSManagedObjectContext *context = self.managedObjectContext;
    
	NSFetchRequest *request = [[NSFetchRequest alloc] init];
	NSEntityDescription *entity = [NSEntityDescription entityForName:entityName inManagedObjectContext:context];
	[request setEntity:entity];
    
	NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:@"startTime" ascending:NO];
	[request setSortDescriptors:[NSArray arrayWithObject:sort]];
	[request setFetchLimit:limit];
    
	NSError *error = nil;

	NSMutableArray *mutableFetchResults = [[context executeFetchRequest:request error:&error] mutableCopy];
	if (mutableFetchResults == nil) {
		// Handle the error.
		NSLog(@"fetch error.");
	}
    
	return mutableFetchResults;
}

- (NSMutableArray*)all:(NSString*)entityName {
	return [self fetch:entityName limit:0];
}

- (NSManagedObject*)entityForInsert:(NSString*)entityname {
	NSManagedObjectContext *context = self.managedObjectContext;
	return [NSEntityDescription insertNewObjectForEntityForName:entityname inManagedObjectContext:context];
}

@end
