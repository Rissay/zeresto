//
//  ArticleListViewController.m
//  HorizontalTables
//
//  Created by Felipe Laso on 8/6/11.
//  Copyright 2011 Felipe Laso. All rights reserved.
//

#import "ArticleListViewController.h"

@implementation ArticleListViewController

@synthesize articleDictionary = _articleDictionary;
@synthesize reusableCells = _reusableCells;

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.articleDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Articles" ofType:@"plist"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    self.articleDictionary = nil;
    self.reusableCells = nil;
}

#pragma mark - Table View Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.articleDictionary.allKeys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

#pragma mark - Memory Management

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc
{
    self.articleDictionary = nil;
    self.reusableCells = nil;
    
    [super dealloc];
}

@end