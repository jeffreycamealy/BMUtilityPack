//
//  BMTouchDownScrollView.m
//  DRYV
//
//  Created by Jeffrey Camealy on 1/17/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "BMTouchDownScrollView.h"

@implementation BMTouchDownScrollView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.touchDownDelegate scrollViewWasTouched];
    [super touchesBegan:touches withEvent:event];
}

@end

































