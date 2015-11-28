//
//  FailedBankDetails+CoreDataProperties.h
//  FailedBlankCD
//
//  Created by Pablo Ortega Mesa on 28-11-15.
//  Copyright © 2015 khrno.cl. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FailedBankDetails.h"

NS_ASSUME_NONNULL_BEGIN

@interface FailedBankDetails (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *zip;
@property (nullable, nonatomic, retain) NSDate *closeDate;
@property (nullable, nonatomic, retain) NSDate *updateDate;
@property (nullable, nonatomic, retain) FailedBankInfo *info;

@end

NS_ASSUME_NONNULL_END
