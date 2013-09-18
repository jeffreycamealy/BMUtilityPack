//
//  BMTouchDownScrollView.h
//  DRYV
//
//  Created by Jeffrey Camealy on 1/17/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMTouchDownScrollViewDelegate.h"

@interface BMTouchDownScrollView : UIScrollView
@property (weak) IBOutlet id <BMTouchDownScrollViewDelegate> touchDownDelegate;
@end
