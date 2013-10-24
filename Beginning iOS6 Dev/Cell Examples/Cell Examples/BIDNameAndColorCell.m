//
//  BIDNameAndColorCell.m
//  Cell Examples
//
//  Created by Jay R Newlin on 10/24/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDNameAndColorCell.h"

@implementation BIDNameAndColorCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setName:(NSString *)n
{
  if (![n isEqualToString:_name]) {
    _name = [n copy];
    _nameValue.text = _name;
  }
}

- (void)setColor:(NSString *)c
{
  if (![c isEqualToString:_color]) {
    _color = [c copy];
    _colorValue.text = _color;
  }
}

@end
