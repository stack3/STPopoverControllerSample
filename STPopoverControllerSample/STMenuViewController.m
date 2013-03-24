//
//  STMenuViewController.m
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STMenuViewController.h"
#import "STPopoverSampleViewController.h"
#import "STPopoverByAppContextViewController.h"

@implementation STMenuViewController {
    __weak IBOutlet UITableView *_tableView;
}

- (id)init
{
    self = [super initWithNibName:@"STMenuViewController" bundle:nil];
    if (self) {
        self.title = @"Menu";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

#pragma mark - UITableViewDatasource & UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cellIdentitider";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Popover Sample";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"Popover by AppContext";
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        STPopoverSampleViewController *controller = [[STPopoverSampleViewController alloc] init];
        [self.navigationController pushViewController:controller animated:YES];
    } else if (indexPath.row == 1) {
        STPopoverByAppContextViewController *controller = [[STPopoverByAppContextViewController alloc] init];
        [self.navigationController pushViewController:controller animated:YES];
    }
}

@end
