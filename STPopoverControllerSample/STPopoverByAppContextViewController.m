//
//  STPopoverByAppContextViewController.m
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STPopoverByAppContextViewController.h"
#import "STPopoverByAppContextContentViewController.h"
#import "STAppContext.h"

@implementation STPopoverByAppContextViewController {
    IBOutlet UIButton *_popoverButton;
}

- (id)init
{
    self = [super initWithNibName:@"STPopoverByAppContextViewController" bundle:nil];
    if (self) {
        self.title = @"Popover by AppContext";
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
    STPopoverByAppContextContentViewController *contentViewController = [[STPopoverByAppContextContentViewController alloc] init];
    [[STAppContext sharedAppContext] presentPopoverWithContentViewController:contentViewController fromRect:_popoverButton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

@end
