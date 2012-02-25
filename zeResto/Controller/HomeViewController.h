//
//  HomeViewController.h
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "zerestoViewController.h"


@interface HomeViewController : zerestoViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *listes;
}
@property (retain, nonatomic) IBOutlet UITableView *listes;

@end
