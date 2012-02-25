//
//  AppDelegate.h
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "zerestoTabbarViewController.h"

@interface AppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate>
{
    BOOL displayNavImage;
}

@property (nonatomic) BOOL displayNavImage;

@property (strong, nonatomic) IBOutlet UIWindow *window;

//@property (strong, nonatomic) IBOutlet UINavigationController *navigationController;

@property (nonatomic, retain) IBOutlet zerestoTabbarViewController *tabBarController;


+(AppDelegate*)getzerestoApplication;

@end
