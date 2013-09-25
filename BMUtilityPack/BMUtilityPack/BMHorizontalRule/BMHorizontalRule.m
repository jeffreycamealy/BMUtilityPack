//
//  BMHorizontalRule.m
//  BatteryClub
//
//  Created by Jeffrey Camealy on 6/27/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "BMHorizontalRule.h"

@interface BMHorizontalRule () {
    NSUInteger numHRs;
}
@end


@implementation BMHorizontalRule

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        _ruleHeight = 1;
    }
    return self;
}

- (void)addColor:(UIColor *)color {
    UIView *hr = [UIView autoLayoutViewAddedToView:self];
    hr.backgroundColor = color;
    [self addConstraintForSubview:hr visualFormat:@"H:|[hr]|"];
    [self addConstraintForSubview:hr visualFormat:str(@"V:|-%f-[hr(%f)]", self.ruleHeight*numHRs, self.ruleHeight)];
    numHRs++;
}

- (CGSize)intrinsicContentSize {
    return CGSizeMake(0, self.ruleHeight*numHRs);
}

@end
