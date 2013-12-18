//
//  BMSelectorButton.m
//  BMUtilityPack
//
//  Created by Jeffrey Camealy on 12/19/12.
//  Copyright (c) 2012 bearMountain. All rights reserved.
//

#import "BMSelectorButton.h"
#import "BMInitMacros.h"

@implementation BMSelectorButton

//UIViewCommonInit(
//     // Target Action
//     
//     // Make (Highlighted|Selected) = Selected
//     NSUInteger HighlightedAndSelected = (UIControlStateHighlighted|UIControlStateSelected);
//     [self setBackgroundImage:[self backgroundImageForState:UIControlStateSelected] forState:HighlightedAndSelected];
//     [self setImage:[self imageForState:UIControlStateSelected] forState:HighlightedAndSelected];
//     [self setTitle:[self titleForState:UIControlStateSelected] forState:HighlightedAndSelected];
//     [self setTitleColor:[self titleColorForState:UIControlStateSelected] forState:HighlightedAndSelected];
//);

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        [self addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


#pragma mark - Override

- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state {
    // When setting selected, also set Highlighted and Selected|Highlighted
    if (state == UIControlStateSelected) {
        [super setBackgroundImage:image forState:UIControlStateHighlighted];
        [super setBackgroundImage:image forState:UIControlStateSelected|UIControlStateHighlighted];
    }
    
    // Normal Execution
    [super setBackgroundImage:image forState:state];
}


#pragma mark - Private API

- (void)buttonTapped {
    self.selected = !self.selected;
}

@end
































