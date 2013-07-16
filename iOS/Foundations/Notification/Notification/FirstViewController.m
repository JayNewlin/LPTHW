//
//  FirstViewController.m
//  Notification
//
//  Created by Amit Bijlani on 2/14/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController
@synthesize textField = _textField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];

    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)]];
    
    self.textField.delegate = self;


}

- (void) dismissKeyboard:(id) sender {
    [self.textField resignFirstResponder];
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [super viewDidUnload];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    
}


#pragma mark Responding to keyboard events

- (void)keyboardWillShow:(NSNotification *)notification {
   // NSLog(@"keyboard will show");
   // NSLog(@"%@",[notification userInfo]);
}

- (void)keyboardWillHide:(NSNotification *)notification {
   // NSLog(@"keyboard will hide");
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark -
#pragma mark Text field delegate

- (void) textFieldDidEndEditing:(UITextField *)textField {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"textFieldEditingEnded" object:textField.text userInfo:[NSDictionary dictionaryWithObject:textField.text forKey:@"text"]];
}

@end