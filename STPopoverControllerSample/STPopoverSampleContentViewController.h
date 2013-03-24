//
//  STPopoverContentViewController.h
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol STPopoverContentViewControllerDelegate;

@interface STPopoverSampleContentViewController : UIViewController

@property (weak, nonatomic) id<STPopoverContentViewControllerDelegate> delegate;

@end

@protocol STPopoverContentViewControllerDelegate <NSObject>

- (void)popoverContentViewControllerDidTapCloseButton:(STPopoverSampleContentViewController *)sender;

@end
