//
//  PunsTableViewCell.h
//  Puns
//
//  Created by Amit Bijlani on 12/13/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PunsTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *punTextLabel;
@property (nonatomic, weak) IBOutlet UILabel *punRatingLabel;

@end
