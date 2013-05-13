//
//  ConvenienceMacros.h
//  DRYV
//
//  Created by Jeffrey Camealy on 5/13/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#ifndef ConvenienceMacros_h
#define ConvenienceMacros_h


/**
 * creates a formatted string
 * usage: str(@"My number:%i", 5);
 */
#define str(...) [NSString stringWithFormat:__VA_ARGS__]

/**
 * creates a local variable named varname of type cls
 * usage: local(NSArray, myArray)
 * int count = myArray.count;
 */
#define local(cls, varname) cls *varname = [cls new]

/**
 * creates a local "weakself" variable
 * usage: @createWeakSelf
 */
#define createWeakSelf try {} @finally {} __weak typeof(self) weakself = self;

/**
 * Creates a predicate with format
 * Usage: predicate(@"val == %@", myVal);
 */
#define predicate(...) [NSPredicate predicateWithFormat:__VA_ARGS__]


#endif
