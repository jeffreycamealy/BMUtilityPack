//
//  BMMath.m
//  BatteryClub
//
//  Created by Jeffrey Camealy on 5/29/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "BMMath.h"

NSString *bm_rand_str() {
    srand(time(NULL));
    int randNum = rand();
    NSString *randString = [NSString stringWithFormat:@"%i", randNum % 99999];
    return randString;
}