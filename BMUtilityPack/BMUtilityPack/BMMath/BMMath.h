//
//  BMMath.h
//  BatteryClub
//
//  Created by Jeffrey Camealy on 5/29/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

#define d_to_r(num) num*M_PI/180.0

@interface BMMath : NSObject

+ (NSString *)randomString;
+ (NSString *)randomStringOfLength:(NSUInteger)length;

@end
