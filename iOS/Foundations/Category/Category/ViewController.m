//
//  ViewController.m
//  Category
//
//  Created by Jay R Newlin on 7/15/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+MoreColors.h"

@interface ViewController ()

- (void) setViewColor;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  
}

- (void) setViewColor {
  self.view.backgroundColor = [UIColor turquoiseColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
