//
//  BMLaunchArgumentsSpecs.m
//
//  Created by Jeffrey Camealy on 2/19/13.
//

#import "Kiwi.h"
#import "BMLaunchArguments.h" 


SPEC_BEGIN(BMLaunchArgumentsSpecs)

describe(@"BMLaunchArguments", ^{
    
    // Scheme Launch arguments are stored in NSUserDefaults by Xcode
    it(@"Can retrieve bool flags form NSUserDefaults", ^{
        [[NSUserDefaults standardUserDefaults] setValue:@(YES) forKey:@"TestKey"];
        [[@([BMLaunchArguments boolForKey:@"TestKey"]) should] beTrue];
    });
    
});

SPEC_END
