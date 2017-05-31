//
//  UIView+EdgeSlicker.h
//  EdgeSlicker
//
//  Created by Frank on 31/05/2017.
//  Copyright © 2017 Frank. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ViewDisplayState) {
    ViewDisplayStateShown,
    ViewDisplayStateAnimation,
    ViewDisplayStateHidden,
};

@interface UIView (EdgeSlicker)

- (ViewDisplayState)viewDisplayState;

- (void)respondingScrollViewDidEndDragging;

- (void)viewDidRespondAutoHideWhenScrollView:(UIScrollView *)scrollView beginDraggingContentOffset:(CGPoint)beginDraggingContentOffset;

- (void)respondingScrollViewDidScrollToTop;

@end
