//
//  FBCDMasterViewController.h
//  FailedBlankCD
//
//  Created by Pablo Ortega Mesa on 28-11-15.
//  Copyright © 2015 khrno.cl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FBCDMasterViewController : UITableViewController

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSArray *failedBankInfos;

@end
