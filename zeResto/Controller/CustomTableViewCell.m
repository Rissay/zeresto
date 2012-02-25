//
//  CustomTableViewCell.m
//  zeResto
//
//  Created by Yassir BARCHI on 25/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomTableViewCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation CustomTableViewCell
@synthesize labelA;
@synthesize labelB;
@synthesize labelC;

@synthesize finishedHeight, tintColor;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        CATransform3D transform = CATransform3DIdentity;
        transform.m34 = -1/500.f;
        [self.contentView.layer setSublayerTransform:transform];
        
        self.textLabel.layer.anchorPoint = CGPointMake(0.5, 0.0);
        
        self.detailTextLabel.layer.anchorPoint = CGPointMake(0.5, 1.0);
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        self.textLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        self.detailTextLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        
        self.tintColor = [UIColor whiteColor];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat fraction = (self.frame.size.height / self.finishedHeight);
    fraction = MAX(MIN(1, fraction), 0);
    
    CGFloat angle = (M_PI / 2) - asinf(fraction);
    CATransform3D transform = CATransform3DMakeRotation(angle, -1, 0, 0);
    [self.textLabel.layer setTransform:transform];
    [self.detailTextLabel.layer setTransform:CATransform3DMakeRotation((M_PI / 2) - asinf(fraction), 1, 0, 0)];
//    
//    self.textLabel.backgroundColor = [self.tintColor colorWithBrightness:0.3 + 0.7*fraction];
//    self.detailTextLabel.backgroundColor = [self.tintColor colorWithBrightness:0.5 + 0.5*fraction];
    
    
    fraction = 1 / fraction;
    
    CGFloat labelHeight = ceilf(self.contentView.frame.size.height/2*fraction);
    labelHeight = MIN(MAX(1, labelHeight), 800);
    
    self.textLabel.frame = CGRectMake(0, 0, self.contentView.frame.size.width, labelHeight);
    self.detailTextLabel.frame = CGRectMake(0,self.contentView.frame.size.height - labelHeight, self.contentView.frame.size.width, labelHeight);
}

- (void)dealloc {
    [labelA release];
    [labelB release];
    [labelC release];
    [super dealloc];
}
@end

