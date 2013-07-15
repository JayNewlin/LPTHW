//
//  ViewController.h
//  Events
//
//  Created by Jay R Newlin on 7/15/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface ViewController : UITableViewController <NSXMLParserDelegate>

@property (nonatomic, strong) NSXMLParser *xmlParser;
@property (nonatomic, strong) Event *currentEvent;
@property (nonatomic, strong) NSMutableString *currentString;
@property (nonatomic, assign) BOOL storeCharacters;
@property (nonatomic, strong) NSDateFormatter *dateFormatter;
@property (nonatomic, strong) NSMutableArray *eventsArray;


@end
