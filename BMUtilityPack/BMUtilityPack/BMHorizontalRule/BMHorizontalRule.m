//
//  BMHorizontalRule.m
//  BatteryClub
//
//  Created by Jeffrey Camealy on 6/27/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "BMHorizontalRule.h"

@interface BMHorizontalRule () {
    CGSize size;
}
@end


@implementation BMHorizontalRule

#pragma mark - Init Method

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        size = CGSizeMake(1, 0);
    }
    return self;
}
//
//- (id)initWithColor1:(UIColor *)color1 color2:(UIColor *)color2 {
//    if (self = [super init]) {
//        size = CGSizeMake(1, 2);
//        
//        // topHR
//        UIView *topHR = [UIView autoLayoutViewAddedToView:self];
//        topHR.backgroundColor = color1;
//        [self addConstraintForSubview:topHR visualFormat:@"H:|[topHR]|"];
//        
//        // bottomHR
//        UIView *bottomHR = [UIView autoLayoutViewAddedToView:self];
//        bottomHR.backgroundColor = color2;
//        [self addConstraintForSubview:bottomHR visualFormat:@"H:|[bottomHR]|"];
//    }
//    return self;
//}

- (void)addColor:(UIColor *)color {
    UIView *hr = [UIView autoLayoutViewAddedToView:self];
    hr.backgroundColor = color;
    [self addConstraintForSubview:hr visualFormat:@"H:|[hr]|"];
    [self addConstraintForSubview:hr visualFormat:str(@"V:|-%f-[hr(1)]", size.height)];
    size = CGSizeMake(size.width, size.height+1);
}

- (CGSize)intrinsicContentSize {
    return size;
}

@end
