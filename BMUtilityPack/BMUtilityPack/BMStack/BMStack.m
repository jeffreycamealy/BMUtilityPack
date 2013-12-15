//
//  BMStack.m
//  EventVisualizer
//
//  Created by Jeffrey Camealy on 12/15/13.
//  Copyright (c) 2013 orainteractive. All rights reserved.
//

#import "BMStack.h"

@interface BMStack () {
    NSMutableArray *array;
}
@end


@implementation BMStack

#pragma mark - Init Method

- (id)init {
    return [self initWithContentsOfArray:nil];
}

// Designated Initializer
- (id)initWithContentsOfArray:(NSArray *)anArray {
    if (self = [super init]) {
        array = [NSMutableArray arrayWithArray:anArray];
    }
    
    return self;
}


#pragma mark - Public API

- (void)push:(id)object {
    [array addObject:object];
}

- (id)pop {
    if (array.count == 0) return nil;
    
    id object = array[array.count-1];
    [array removeObjectAtIndex:array.count-1];
    
    return object;
}

@end
