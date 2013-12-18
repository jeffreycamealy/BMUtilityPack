//
//  BMRadioControl.m
//  EventVisualizer
//
//  Created by Jeffrey Camealy on 12/16/13.
//  Copyright (c) 2013 orainteractive. All rights reserved.
//

#import "BMRadioControl.h"

@interface BMRadioControl (){
    NSArray *buttons;
    RACSubject *_buttonAtIndexSelectedSignal;
    
    NSUInteger selectedButtonIndex;
}
@end


@implementation BMRadioControl

#pragma mark - Init Method

- (id)initWithButtons:(NSArray *)someButtons {
    if (self = [super init]) {
        buttons = someButtons;
        _buttonAtIndexSelectedSignal = [RACSubject subject];
        [self addTargetsForButtons];
    }
    return self;
}


#pragma mark - Public API

- (void)selectButtonAtIndex:(NSUInteger)newSelectedButtonIndex {
    [self unselectOldSelectedButton];
    
    // Select new
    UIButton *newSelectedButton = buttons[newSelectedButtonIndex];
    newSelectedButton.selected = YES;
    selectedButtonIndex = newSelectedButtonIndex;
}


#pragma mark - Private API

- (void)addTargetsForButtons {
    int i = 0;
    for (UIButton *button in buttons) {
        button.tag = i++;
        [button addTarget:self action:@selector(buttonSelected:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)unselectOldSelectedButton {
    UIButton *currentSelectedButton = buttons[selectedButtonIndex];
    currentSelectedButton.selected = NO;
}


#pragma mark - Action Method

- (void)buttonSelected:(UIButton *)button {
    [self unselectOldSelectedButton];
    
    selectedButtonIndex = button.tag;
    [_buttonAtIndexSelectedSignal sendNext:@(button.tag)];
}

@end
