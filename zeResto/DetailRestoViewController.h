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

@property (retain, nonatomic) IBOutlet UIImageView *image;
@property (retain, nonatomic) IBOutlet UILabel *adress;
@property (retain, nonatomic) IBOutlet UILabel *rating;
@property (retain, nonatomic) IBOutlet UITextView *comment;
@property (retain, nonatomic) IBOutlet UILabel *nom;
@property (retain, nonatomic) IBOutlet UIView *detailsView;


-(IBAction) showDetails:(BOOL)aut;


@end
