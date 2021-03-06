

#import "UIView+AutoLayout.h"

@implementation UIView (AutoLayout)

- (void)addConstraintForSubview:(UIView *)subview visualFormat:(NSString *)format {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"\\[(\\w*)[(\\]]"
                                                                           options:0
                                                                             error:nil];
    NSArray *matches = [regex matchesInString:format
                                      options:0
                                        range:NSMakeRange(0, format.length)];
    NSTextCheckingResult *result = matches[0];
    NSRange range = [result rangeAtIndex:1];
    NSString *viewName = [format substringWithRange:range];
    NSDictionary *viewDict = @{viewName: subview};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:format
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewDict]];
}

- (void)addConstraintsForViews:(NSDictionary *)views visualFormat:(NSString *)format {
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:format
                                                                 options:0
                                                                 metrics:nil
                                                                   views:views]];
}

- (void)addConstraintForSubviewToFullyFillSuperview:(UIView *)subview {
    [self addConstraintForSubview:subview visualFormat:@"H:|[view]|"];
    [self addConstraintForSubview:subview visualFormat:@"V:|[view]|"];
}

- (void)constrainToFillView:(UIView *)superview axis:(UILayoutConstraintAxis)axis {
    if (axis == UILayoutConstraintAxisHorizontal) {
        [superview addConstraintForSubview:self visualFormat:@"H:|[view]|"];
    } else {
        [superview addConstraintForSubview:self visualFormat:@"V:|[view]|"];
    }
}

- (void)constrainToCenterInView:(UIView *)superview axis:(UILayoutConstraintAxis)axis {
    if (axis == UILayoutConstraintAxisHorizontal) {
        [superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superview
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1
                                                               constant:0]];
    } else {
        [superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:superview
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1
                                                               constant:0]];
    }
}

@end
