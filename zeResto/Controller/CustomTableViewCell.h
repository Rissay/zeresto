//
//  CustomTableViewCell.h
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
{
}

@property (nonatomic, assign) CGFloat  finishedHeight;
@property (nonatomic, retain) UIColor *tintColor;   // default is white color
@property (retain, nonatomic) IBOutlet UILabel *labelA;
@property (retain, nonatomic) IBOutlet UILabel *labelB;
@property (retain, nonatomic) IBOutlet UILabel *labelC;

@end
