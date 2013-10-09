//
//  BIDViewController.h
//  Control Fun
//
//  Created by Jay R Newlin on 10/8/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;

- (IBAction)texFieldDoneEditing:(id)sender;

@end
