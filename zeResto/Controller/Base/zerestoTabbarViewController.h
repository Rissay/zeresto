//
//  zerestoTabbarViewController.h
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "zerestoTabbarViewController.h"

@interface zerestoTabbarViewController : UITabBarController <UITabBarControllerDelegate> {
    UINavigationController* contentController;
	int currentTab;
	int lastTab;
}

@property(retain, nonatomic) UINavigationController* contentController;

-(void)loadTab:(int)tabIndex;
-(void)switchToController:(UIViewController*) controller;
-(void) hideTabBar:(BOOL)boole;
-(void) changeAlpha:(float)alpha;


@end
