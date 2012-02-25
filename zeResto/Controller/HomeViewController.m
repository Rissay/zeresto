//
//  HomeViewController.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"
#import "ListeViewController.h"
#import "zerestoTabbarViewController.h"

@implementation HomeViewController

int _locationContent;
#define ANIMATION_DURATION  1.0

@synthesize listes;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Memory Management

- (void)dealloc 
{
    [listes release];
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
    [self setTitle:@"Ze Resto"];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [listes release];
    [self setListes:nil];
    [super viewDidUnload];

}

#pragma mark - tableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 100;
//}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                       reuseIdentifier:CellIdentifier] autorelease];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
        
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %d",indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Click : %d", indexPath.row);
    ListeViewController *detailViewController = [[[ListeViewController alloc] initWithNibName:@"ListeViewController" bundle:nil andListe:@"Jap"] autorelease];
    [self.navigationController pushViewController:detailViewController animated:YES];
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"begin scrolling");
    _locationContent = scrollView.contentOffset.y;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (_locationContent > scrollView.contentOffset.y)
    {
       // NSLog(@"up"); 
        [UIView beginAnimations:@"show" context:nil];
        [UIView setAnimationDuration:ANIMATION_DURATION];
        [UIView setAnimationDelegate:self];
        
       // self.navigationController.navigationBarHidden = NO;
       // [self.navigationController.navigationBar setAlpha:1.0];
        
//        int height = 367;
//        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, height)];
        
       // [[(zerestoTabbarViewController*)self.navigationController tabController]hideTabBar:NO];
        [[(zerestoTabbarViewController*)self.navigationController tabController]changeAlpha:1.0];

        [UIView commitAnimations];
    }
    else 
    {
        [UIView beginAnimations:@"show" context:nil];
        [UIView setAnimationDuration:ANIMATION_DURATION];
        [UIView setAnimationDelegate:self];
        
//        int height = 460;
//        [self.view setFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, height)];

       // self.navigationController.navigationBarHidden = YES;
    //[self.navigationController.navigationBar setAlpha:0.0];
        
        //[[(zerestoTabbarViewController*)self.navigationController tabController]hideTabBar:YES];
        [[(zerestoTabbarViewController*)self.navigationController tabController]changeAlpha:0.0];

        
        [UIView commitAnimations];
        
        NSLog(@"down");
    }
}

@end
