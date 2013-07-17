//
//  PunsTableViewCell.m
//  Puns
//
//  Created by Jay R. Newlin during Training
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "PunsTableViewCell.h"

@implementation PunsTableViewCell

@synthesize punTextLabel = _punTextLabel;
@synthesize punRatingLabel = _punRatingLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
