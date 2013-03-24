//
//  STAppContext.h
//  STPopoverControllerSample
//
//  Created by EIMEI on 03/24/2013.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STAppContext : NSObject<UIPopoverControllerDelegate>

+ (STAppContext *)sharedAppContext;
- (void)presentPopoverWithContentViewController:(UIViewController *)contentViewController fromRect:(CGRect)fromRect inView:(UIView *)inView permittedArrowDirections:(UIPopoverArrowDirection)permittedArrowDirections animated:(BOOL)animated;
- (void)dismissPopoverAnimated:(BOOL)animated;

@end
