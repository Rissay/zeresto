//
//  DetailRestoViewController.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailRestoViewController.h"

@implementation DetailRestoViewController

bool isHiddenDetails;

@synthesize idResto;
@synthesize image;
@synthesize adress;
@synthesize rating;
@synthesize comment;
@synthesize nom;
@synthesize detailsView;

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
    [detailsView release];
    [nom release];
    [adress release];
    [rating release];
    [comment release];
    [image release];
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
    [self.detailsView setAlpha:0.0];
    [self.comment setAlpha:0.0];
    isHiddenDetails = YES;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setDetailsView:nil];
    [self setNom:nil];
    [self setAdress:nil];
    [self setRating:nil];
    [self setComment:nil];
    [self setImage:nil];
    self.idResto = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(IBAction) showDetails:(BOOL)aut
{
    [UIView beginAnimations:@"details" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    
    if(isHiddenDetails)
    {
        [self.detailsView setAlpha:1.0];
        [self.comment setAlpha:1.0];
    }
    else
    {
        [self.detailsView setAlpha:0.0];
        [self.comment setAlpha:0.0];
    }
    isHiddenDetails = !isHiddenDetails;
    
    [UIView commitAnimations];

}

@end
