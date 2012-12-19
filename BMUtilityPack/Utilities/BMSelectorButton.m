//
//  BMSelectorButton.m
//  BMUtilityPack
//
//  Created by Jeffrey Camealy on 12/19/12.
//  Copyright (c) 2012 bearMountain. All rights reserved.
//

#import "BMSelectorButton.h"

@interface BMSelectorButton ()
- (void)commonInit;
- (void)buttonTouched;
@end

@implementation BMSelectorButton

#pragma mark - Inits

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        [self commonInit];
    }
    return self;
}


#pragma mark - Private API

- (void)commonInit {
    // Target Action
    [self addTarget:self action:@selector(buttonTouched) forControlEvents:UIControlEventTouchDown];
    
    // Make HighlightedAndSelected values = Selected Values
    NSUInteger HighlightedAndSelected = (UIControlStateHighlighted|UIControlStateSelected);
    [self setBackgroundImage:[self backgroundImageForState:UIControlStateSelected] forState:HighlightedAndSelected];
    [self setImage:[self imageForState:UIControlStateSelected] forState:HighlightedAndSelected];
    [self setTitle:[self titleForState:UIControlStateSelected] forState:HighlightedAndSelected];
    [self setTitleColor:[self titleColorForState:UIControlStateSelected] forState:HighlightedAndSelected];
}

- (void)buttonTouched {
    self.selected = !self.selected;
}

@end
































