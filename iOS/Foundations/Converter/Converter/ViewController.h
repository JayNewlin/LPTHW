//
//  ViewController.h
//  Converter
//
//  Created by Amit Bijlani on 3/7/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStoreHistory @"storeHistory"
#define kToCurrency @"toCurrency"
#define kFromCurrency @"fromCurrency"



@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *fromLabel;
@property (strong, nonatomic) IBOutlet UILabel *toLabel;

- (void) setupDefaults;


@end
