//
//  UIImageView+Utilities.m
//  BMUtilityPack
//
//  Created by Jeffrey Camealy on 1/11/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "UIImageView+Utilities.h"

@implementation UIImageView (Utilities)

- (id)initWithImageNamed:(NSString *)imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    return [self initWithImage:image];
}

@end
