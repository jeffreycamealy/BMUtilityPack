//
//  UIView+FrameManipulations.h
//  BMUtilityPack
//
//  Created by Jeffrey Camealy on 4/20/12.
//  Copyright (c) 2012 bearMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FrameManipulations)
- (void)offsetXBy:(float)offset;
- (void)offsetYBy:(float)offset;
- (void)offsetXBy:(float)xOffset offsetYBy:(float)yOffset;
- (void)offsetHeightBy:(float)height;

- (void)setFrameOriginX:(float)originX;
- (void)setFrameOriginY:(float)originY;
- (void)setFrameHeight:(float)height;
- (void)setFrameWidth:(float)width;
@end
