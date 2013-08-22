//
//  BMMath.m
//  BatteryClub
//
//  Created by Jeffrey Camealy on 5/29/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "BMMath.h"

@implementation BMMath

+ (NSString *)randomString {
    srand(time(NULL));
    int randNum = rand();
    NSString *randString = [NSString stringWithFormat:@"%i", randNum % 99999];
    return randString;
}

NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

+ (NSString *)randomStringOfLength:(NSUInteger)length {
    NSMutableString *randomString = [NSMutableString stringWithCapacity: length];
    
    for (int i=0; i<length; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    return randomString;
}
@end
