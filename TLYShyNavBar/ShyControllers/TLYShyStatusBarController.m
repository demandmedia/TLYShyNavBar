//
//  TLYShyStatusBarController.m
//  TLYShyNavBarDemo
//
//  Created by Mazyad Alabduljaleel on 11/13/15.
//  Copyright © 2015 Telly, Inc. All rights reserved.
//

#import "TLYShyStatusBarController.h"

@implementation TLYShyStatusBarController

- (CGFloat)_statusBarHeight
{
	CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
	UIView *view = self.viewController.view;
	CGRect viewFrame = [view.superview convertRect:view.frame toView:nil];

	CGRect intersection = CGRectIntersection(statusBarFrame, viewFrame);

	if (CGRectIsNull(intersection)) {
		return 0.f;
	} else {
		return intersection.size.height;
	}
}

- (CGFloat)maxYRelativeToView:(UIView *)superview
{
    return [self _statusBarHeight];
}

- (CGFloat)calculateTotalHeightRecursively
{
    return [self _statusBarHeight];
}

@end

