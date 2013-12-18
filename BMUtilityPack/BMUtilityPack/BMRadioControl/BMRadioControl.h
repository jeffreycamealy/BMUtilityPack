//
//  BMRadioControl.h
//  EventVisualizer
//
//  Created by Jeffrey Camealy on 12/16/13.
//  Copyright (c) 2013 orainteractive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMRadioControl : NSObject

- (id)initWithButtons:(NSArray *)buttons;
- (void)selectButtonAtIndex:(NSUInteger)index;

@property RACSignal *buttonAtIndexSelectedSignal;

@end
