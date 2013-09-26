//
//  ViewController.h
//  ARC
//
//  Created by Amit Bijlani on 11/30/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface ViewController : UIViewController 

@property (nonatomic, strong) Book *book;
@property (nonatomic, weak) UITextField *tf;


- (IBAction)buttonPressed:(id)sender;

@end
