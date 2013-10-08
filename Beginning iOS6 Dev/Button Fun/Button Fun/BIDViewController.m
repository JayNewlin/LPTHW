//
//  BIDViewController.m
//  Button Fun
//
//  Created by Jay R Newlin on 10/8/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDViewController.h"

@implementation BIDViewController

- (IBAction)buttonPressed:(UIButton *)sender {
  
  NSString *title = [sender titleForState:UIControlStateNormal];
  NSString *plainText = [NSString stringWithFormat:@"%@ button pressed.", title];
  
  NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
  
  NSDictionary *attributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]
                               };
  
  NSRange nameRange = [plainText rangeOfString:title];
  
  [styledText setAttributes:attributes range:nameRange];
  _statusLabel.attributedText = styledText;
  
}
@end
