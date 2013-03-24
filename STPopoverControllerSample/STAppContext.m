//
//  STAppContext.m
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STAppContext.h"

@implementation STAppContext {
    __strong UIPopoverController *_popoverController;
}

+ (STAppContext *)sharedAppContext
{
    static STAppContext *singleton = nil;
    if (singleton == nil) {
        singleton = [[STAppContext alloc] init];
    }
    return singleton;
}

- (void)presentPopoverWithContentViewController:(UIViewController *)contentViewController fromRect:(CGRect)fromRect inView:(UIView *)inView permittedArrowDirections:(UIPopoverArrowDirection)permittedArrowDirections animated:(BOOL)animated
{
    if (_popoverController) {
        [_popoverController dismissPopoverAnimated:NO];
    }
    
    _popoverController = [[UIPopoverController alloc] initWithContentViewController:contentViewController];
    _popoverController.delegate = self;
    [_popoverController presentPopoverFromRect:fromRect inView:inView permittedArrowDirections:permittedArrowDirections animated:animated];
}

- (void)dismissPopoverAnimated:(BOOL)animated
{
    if (_popoverController) {
        [_popoverController dismissPopoverAnimated:YES];
        _popoverController = nil;
        
        NSLog(@"AppContext released popoverController.");
    }
}

#pragma mark - UIPopoverControllerDelegate

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    _popoverController = nil;
    
    NSLog(@"AppContext released popoverController.");
}

@end
