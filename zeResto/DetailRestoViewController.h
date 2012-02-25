//
//  DetailRestoViewController.h
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "zerestoViewController.h"

@interface DetailRestoViewController : zerestoViewController
{
    NSString *idResto;
}

@property (nonatomic, retain) NSString *idResto;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andResto:(NSString*)aResto;

@end
