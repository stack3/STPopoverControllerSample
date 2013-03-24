//
//  STPopoverContentViewController.m
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STPopoverSampleContentViewController.h"

@implementation STPopoverSampleContentViewController {
    IBOutlet UIButton *_closeButton;
}

- (id)init
{
    self = [super initWithNibName:@"STPopoverSampleContentViewController" bundle:nil];
    if (self) {
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
    [_delegate popoverContentViewControllerDidTapCloseButton:self];
}

@end
