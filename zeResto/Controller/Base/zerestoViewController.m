//
//  zerestoViewController.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "zerestoViewController.h"
#import "AppDelegate.h"
#import "zerestoViewController.h"

@implementation zerestoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
    [super viewDidLoad];
	/*
	AppDelegate* theApp = [AppDelegate getSodexoApplication];
	theApp.displayNavImage = YES;
    
	[self.navigationController navigationBar].tintColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.82  alpha:0.1];
    [self.view setFrame:CGRectMake(0, 40, 320, 440)];
    
    
    if([[self.navigationController navigationBar] respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
    {
        [[self.navigationController navigationBar] setBackgroundImage:[UIImage imageNamed: @"header.png"] forBarMetrics:0]; //0=> 
    }
    //*/

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

@end
