//
//  STPopoverByAppContextContentViewController.m
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STPopoverByAppContextContentViewController.h"
#import "STAppContext.h"

@implementation STPopoverByAppContextContentViewController {
    IBOutlet UIButton *_closeButton;
}

- (id)init
{
    self = [super initWithNibName:@"STPopoverByAppContextContentViewController" bundle:nil];
    if (self) {
        self.title = @"Content";
        self.contentSizeForViewInPopover = CGSizeMake(320, 280);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_closeButton addTarget:self action:@selector(didTapCloseButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didTapCloseButton
{
    [[STAppContext sharedAppContext] dismissPopoverAnimated:YES];
}

@end
