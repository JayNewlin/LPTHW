//
//  BIDDoubleComponentPickerViewController.h
//  Pickin and Grinnin
//
//  Created by Jay R Newlin on 10/15/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFillingComponent 0
#define kBreadComponent 1

@interface BIDDoubleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *doublePicker;
@property (strong, nonatomic) NSArray *fillingTypes;
@property (strong, nonatomic) NSArray *breadTypes;

- (IBAction)buttonPressed;

@end
