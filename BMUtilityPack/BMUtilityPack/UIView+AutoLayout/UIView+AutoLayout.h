

#import <UIKit/UIKit.h>

@interface UIView (AutoLayout)

- (void)addConstraintForSubview:(UIView *)subview visualFormat:(NSString *)format;
- (void)addConstraintsForViews:(NSDictionary *)views visualFormat:(NSString *)format;
- (void)addConstraintForSubviewToFullyFillSuperview:(UIView *)subview;
- (void)constrainToFillView:(UIView *)superview axis:(UILayoutConstraintAxis)axis;
    
- (void)constrainToCenterInView:(UIView *)superview axis:(UILayoutConstraintAxis)axis;

@end
