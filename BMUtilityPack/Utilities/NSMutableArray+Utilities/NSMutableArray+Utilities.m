//
//  NSMutableArray+Utilities.m
//  Dryv-DryCleaners
//
//  Created by Jeffrey Camealy on 4/25/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "NSMutableArray+Utilities.h"

@implementation NSMutableArray (Utilities)

- (void)filterWithBlock:(BOOL(^)(id obj))filterBlock {
    for (id object in self) {
        if (!filterBlock(object)) {
            [self removeObject:object];
        }
    }
}

@end
