//
//  ArticleListViewController.h
//  HorizontalTables
//
//  Created by Felipe Laso on 8/6/11.
//  Copyright 2011 Felipe Laso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleListViewController : UITableViewController
{
    NSDictionary *_articleDictionary;
    NSMutableArray *_reusableCells;
}

@property (nonatomic, retain) NSDictionary *articleDictionary;
@property (nonatomic, retain) NSMutableArray *reusableCells;

@end
