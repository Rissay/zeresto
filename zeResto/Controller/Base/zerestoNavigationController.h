//
//  zerestoNavigationController.h
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "zerestoTabbarViewController.h"

@interface zerestoNavigationController : UINavigationController
{
    zerestoTabbarViewController* tabController;
}


@property(nonatomic, retain) zerestoTabbarViewController* tabController;

@end
