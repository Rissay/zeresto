//
//  AppDelegate.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "HomeViewController.h"

@implementation AppDelegate

@synthesize window = _window;
//@synthesize navigationController = _navigationController;
@synthesize displayNavImage;

@synthesize tabBarController = _tabBarController;

- (id) init
{
	[super init];
	displayNavImage = YES;
	return self;
}

- (void)dealloc
{
    [_window release];
    //[_navigationController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    //    HomeViewController *homeViewController =[[[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil] autorelease];
    //    self.navigationController = [[[UINavigationController alloc] initWithRootViewController:homeViewController] autorelease];
    //    self.window.rootViewController = self.navigationController;
    
    [self.window addSubview:[self.tabBarController view]];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

+(AppDelegate *)getzerestoApplication {
    UIApplication *application = [UIApplication sharedApplication];
	if (application != nil)
	{
		NSObject *applicationDelegate = application.delegate;
		if (applicationDelegate != nil)
		{
			if ([applicationDelegate isKindOfClass:[AppDelegate class]] == YES)
			{
				AppDelegate *baseApplication = (AppDelegate *) applicationDelegate;
				return baseApplication;
			}
		}
	}
	return nil;
}


@end
