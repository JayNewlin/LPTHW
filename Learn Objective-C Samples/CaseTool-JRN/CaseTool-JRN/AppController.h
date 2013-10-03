//
//  AppController.h
//  CaseTool-JRN
//
//  Created by Jay R Newlin on 10/3/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface AppController : NSObject {
  IBOutlet NSTextField *textField;
  IBOutlet NSTextField *resultsField;
}

- (IBAction) uppercase: (id) sender;
- (IBAction) lowercase: (id) sender;

@end // AppController
