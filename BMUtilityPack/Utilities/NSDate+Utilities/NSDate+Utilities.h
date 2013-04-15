//
//  NSDate+Utilities.h
//  Dryv-DryCleaners
//
//  Created by Jeffrey Camealy on 4/14/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Utilities)

- (NSDate *)dateByStrippingTimeComponents;
- (NSString *)stringFromDateFormat:(NSString *)dateFormat;
- (NSString*)stringWithFullStyle;

@end
