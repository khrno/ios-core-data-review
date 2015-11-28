//
//  FBCDMasterViewController.m
//  FailedBlankCD
//
//  Created by Pablo Ortega Mesa on 28-11-15.
//  Copyright © 2015 khrno.cl. All rights reserved.
//

#import "FBCDMasterViewController.h"
#import "FailedBankInfo.h"

@implementation FBCDMasterViewController

@synthesize failedBankInfos;
@synthesize managedObjectContext;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"FailedBankInfo"
                                              inManagedObjectContext:managedObjectContext];
    
    [fetchRequest setEntity:entity];
    
    NSError *error;
    
    self.failedBankInfos = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    self.title = @"Failed Banks";
}

#pragma mark - Table View Behaviour
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [failedBankInfos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    FailedBankInfo *info = [failedBankInfos objectAtIndex:indexPath.row];
    cell.textLabel.text = info.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", info.city, info.state];
    
    return cell;
}

@end
