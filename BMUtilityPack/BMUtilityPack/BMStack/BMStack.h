//
//  BMStack.h
//  EventVisualizer
//
//  Created by Jeffrey Camealy on 12/15/13.
//  Copyright (c) 2013 orainteractive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMStack : NSObject

// Init
- (id)initWithContentsOfArray:(NSArray *)array;

// Function
- (void)push:(id)object;
- (id)pop;



@end
