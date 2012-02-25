//
//  ListeViewController.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ListeViewController.h"
#import "DetailRestoViewController.h"

@implementation ListeViewController

@synthesize listElements, idList;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andListe:(NSString*)aIdList
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        if (aIdList != NULL && aIdList.length > 0)
            self.idList = [NSString  stringWithString:aIdList];
        else 
            self.idList = nil;
        
        self.listElements = nil;
    }
    return self;
}

#pragma mark - Memory Management
-(void)dealloc
{
    [super dealloc];
    //[idList dealloc];
}

- (void)didReceiveMemoryWarning
{
    NSLog(@"Memory Warning : %@", [self class]);
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.idList = nil;
    self.listElements = nil;
    [super viewDidUnload];
}

#pragma mark - tableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
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
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %@ %d", idList,indexPath.row];
    
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Click : %d", indexPath.row);
    DetailRestoViewController *detailViewController = [[[DetailRestoViewController alloc] initWithNibName:@"DetailRestoViewController" bundle:nil andResto:[NSString stringWithFormat:@"%@ %d",self.idList,indexPath.row]] autorelease];
    [self.navigationController pushViewController:detailViewController animated:YES];
}


@end
