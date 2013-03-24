//
//  STViewController.m
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STPopoverSampleViewController.h"

@implementation STPopoverSampleViewController {
    __weak IBOutlet UIButton *_popoverButton;
    __strong UIPopoverController *_popoverController;
}

- (id)init
{
    self = [super initWithNibName:@"STPopoverSampleViewController" bundle:nil];
    if (self) {
        self.title = @"Popover Sample";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_popoverButton addTarget:self action:@selector(didTapPopoverButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didTapPopoverButton
{
    STPopoverSampleContentViewController *contentViewController = [[STPopoverSampleContentViewController alloc] init];
    contentViewController.delegate = self;
    
    _popoverController = [[UIPopoverController alloc] initWithContentViewController:contentViewController];
    _popoverController.delegate = self;
    [_popoverController presentPopoverFromRect:_popoverButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

#pragma mark - STPopoverContentViewControllerDelegate

- (void)popoverContentViewControllerDidTapCloseButton:(id)sender
{
    if (_popoverController) {
        [_popoverController dismissPopoverAnimated:YES];
        _popoverController = nil;
        
        NSLog(@"PopoverSampleViewController released popoverController.");
    }
}

#pragma mark - UIPopoverControllerDelegate

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    _popoverController = nil;
    
    NSLog(@"PopoverSampleViewController released popoverController.");
}

@end
