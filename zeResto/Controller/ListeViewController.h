//
//  ListeViewController.h
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSString *idList;
    NSArray     *listElements;
}


@property (nonatomic, retain)  NSString *idList;
@property (nonatomic, retain)  NSArray  *listElements;


- (id)initWithNibName:(NSString *)nibNameOrNil 
               bundle:(NSBundle *)nibBundleOrNil 
             andListe:(NSString*)idList;
@end
