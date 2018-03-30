//
//  Profile+CoreDataProperties.m
//  CoreData_BasicExample
//
//  Created by Loud on 3/29/18.
//  Copyright © 2018 loudsoftware. All rights reserved.
//
//

#import "Profile+CoreDataProperties.h"

@implementation Profile (CoreDataProperties)

+ (NSFetchRequest<Profile *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Profile"];
}

@dynamic id;
@dynamic name;

@end
