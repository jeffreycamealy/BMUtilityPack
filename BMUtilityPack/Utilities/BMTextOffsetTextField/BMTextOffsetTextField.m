//
//  BMTextOffsetTextField.m
//  BatteryClub
//
//  Created by Jeffrey Camealy on 7/14/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "BMTextOffsetTextField.h"

@implementation BMTextOffsetTextField

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        _xOffset = 10;
    }
    return self;
}

#pragma mark - Text Offset

- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectMake(bounds.origin.x + self.xOffset, bounds.origin.y,
                      bounds.size.width - self.xOffset, bounds.size.height);
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return [self textRectForBounds:bounds];
}

@end
