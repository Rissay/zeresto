//
//  zerestoTabbarViewController.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//  [[(zerestoTabbarViewController*)self.navigationController tabController]loadTab:0];


#import "zerestoTabbarViewController.h"
#import "zerestoNavigationController.h"
#import "zerestoViewController.h"
#import "HomeViewController.h"
#import "DetailRestoViewController.h"

@implementation zerestoTabbarViewController

@synthesize contentController;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)dealloc
{
    [contentController release];
    self.contentController = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.contentController = nil;
    [self setDelegate:self];
    currentTab=0;
    [self loadTab: 0];

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - tabbar

- (void) tabBarController: (UITabBarController *) tabBarController didSelectViewController: (UIViewController *) viewController
{
//    if([(zerestoViewController*)[contentController topViewController] canAccessTabBar])
//    {
//        if(self.selectedIndex == currentTab){
//            [contentController popToRootViewControllerAnimated:YES];
//        }
//        else{
//            [self loadTab:self.selectedIndex];
//        }
//    }
//    else
//    {
//        if(currentTab == 11 || currentTab == 12)
//        {
//            self.selectedIndex = 0;
//        }
//        else self.selectedIndex = currentTab;
//    }
    
    [self loadTab:self.selectedIndex];
}


-(void)loadTab:(int)tabIndex{
	UIViewController* controller = nil;	
	lastTab = currentTab;
    currentTab = tabIndex;
	switch (tabIndex) {
		//*
         case 0:
			//Accueil
            
                controller = [[HomeViewController alloc] initWithNibName:@"HomeViewController" 
                                                                  bundle:nil];
			break;
		case 1:
			//Test
            controller = [[DetailRestoViewController alloc] initWithNibName:@"DetailRestoViewController" 
                                                                     bundle:nil 
                                                                   andResto:@"TabBar"];
			
			break;	
		case 2:
			//Add
            break;
        /* 
		case 3:
			//Friends
			
			
			break;
		case 4:
			//Plus
			
			
			break;
       
            
		case -1:
			//Ouverture de l'écran de chargement
            break;
         //*/
			
	}
    NSLog(@"[loadtab] controller = ?");
	if(controller){
		[self switchToController:controller];
		[controller release];
        NSLog(@"[loadtab] controller = YES");
	}
	
	
}

-(void)switchToController:(UIViewController*) controller{
	
	[contentController viewWillDisappear:YES];
	NSLog(@"[switchToController] contentController = ?");
	if(contentController){
		[contentController.view removeFromSuperview];
		[contentController release];
		self.contentController = nil;
	}
	
	self.contentController = [[zerestoNavigationController alloc] initWithRootViewController:controller];
	
	//On donne une référence sur le tab controller au contentController;
	[(zerestoNavigationController*)contentController setTabController:self];
	
	[contentController.navigationBar setBarStyle:UIBarStyleBlackOpaque];	
	
	if(currentTab == -1){
		contentController.navigationBar.alpha = 0.0;
	}
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.5];
	[UIView setAnimationTransition:UIViewAnimationTransitionNone forView:self.view cache:YES];
	
	[self.view insertSubview:contentController.view belowSubview:self.tabBar];
	
	[UIView commitAnimations];
	
	if(self.tabBar.alpha < 1.0){
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:1.5];
		self.tabBar.alpha = 1.0;
		contentController.navigationBar.alpha = 1.0;
		[UIView commitAnimations];
	}
	
	[contentController viewDidAppear:YES];
}


@end
