//
//  DetailRestoViewController.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailRestoViewController.h"

@implementation DetailRestoViewController

@synthesize idResto;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andResto:(NSString*)aResto
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        if (aResto != NULL && aResto.length >0)
            self.idResto = [NSString stringWithString:aResto];
        else 
            self.idResto = nil;
    }
    return self;
}

#pragma mark - Memory Management

-(void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    NSLog(@"Memory Warning : %@", [self class]);
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [self setTitle:idResto];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.idResto = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

@end
