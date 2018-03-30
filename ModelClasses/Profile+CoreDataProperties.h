//
//  Profile+CoreDataProperties.h
//  CoreData_BasicExample
//
//  Created by Loud on 3/29/18.
//  Copyright © 2018 loudsoftware. All rights reserved.
//
//

#import "Profile+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Profile (CoreDataProperties)

+ (NSFetchRequest<Profile *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *id;
@property (nullable, nonatomic, copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
