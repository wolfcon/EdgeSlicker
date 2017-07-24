//
//  UIView+EdgeSlicker.m
//  EdgeSlicker
//
//  Created by Frank on 31/05/2017.
//  Copyright © 2017 Frank. All rights reserved.
//

#import "UIView+EdgeSlicker.h"

@implementation UIView (EdgeSlicker)

- (ViewDisplayState)viewDisplayState {
    CGFloat originalY = UIScreen.mainScreen.bounds.size.height - self.frame.size.height;
    
    CGFloat viewDisplacement = self.frame.origin.y - originalY;
    
    if (viewDisplacement == self.frame.size.height) {
        return ViewDisplayStateHidden;
    } else if (viewDisplacement == 0) {
        return ViewDisplayStateShown;
    }
    
    return ViewDisplayStateAnimation;
}

- (void)respondingScrollViewDidEndDragging {
    
    self.hidden = [self viewDisplayState] != ViewDisplayStateShown;
}

- (void)viewDidRespondAutoHideWhenScrollView:(UIScrollView *)scrollView beginDraggingContentOffset:(CGPoint)beginDraggingContentOffset {
    
    CGFloat distance = scrollView.contentOffset.y - beginDraggingContentOffset.y;
    CGRect frame = self.frame;
    CGFloat originalY = UIScreen.mainScreen.bounds.size.height - self.frame.size.height;
    
    // 当滑动到顶端时强制显示
    if (scrollView.contentOffset.y < 30) {
        [self respondingScrollViewDidScrollToTop];
        return;
    }
    
    //下拉隐藏
    if (distance > 0) {
        
        if ([self viewDisplayState] != ViewDisplayStateHidden) {
            
            if (distance > self.frame.size.height) {
                distance = self.frame.size.height;
            }
            frame.origin.y = originalY + distance;
            
            self.frame = frame;
        }
        
        //向上显示
    } else if (distance < -10) {
        if ([self viewDisplayState] != ViewDisplayStateShown) {
            
            if (distance < -10 - self.frame.size.height) {
                distance = -10 - self.frame.size.height;
            }
            frame.origin.y = originalY + self.frame.size.height + distance + 10;
            
            self.frame = frame;
            
            self.hidden = NO;
        }
    }
}

- (void)respondingScrollViewDidScrollToTop {
    self.hidden = NO;
    CGRect frame = self.frame;
    
    frame.origin.y = UIScreen.mainScreen.bounds.size.height - self.frame.size.height;
    
    [UIView animateWithDuration:0.3 animations:^{
        self.frame = frame;
    }];
}


@end

