//
//  ViewController.m
//  Events
//
//  Created by Jay R Newlin on 7/15/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize xmlParser = _xmlParser;
@synthesize currentEvent = _currentEvent;
@synthesize currentString = _currentString;
@synthesize storeCharacters = _storeCharacters;


- (void)viewDidLoad
{
    [super viewDidLoad];
  
  self.xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://api.eventful.com/rest/events/search?app_key=tgLkQkC4wv8vMNhr&location=19106&category=music&date=future"]];
  
  self.xmlParser.delegate = self;
  
  if ( [self.xmlParser parse] )
    NSLog(@"XML Parsed");
  else
    NSLog(@"Failed to parse");




}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Parser Delegate

static NSString *kName_Event = @"event";
static NSString *kName_Title = @"title";
static NSString *kName_StartTime = @"start_time";
static NSString *kName_VenueName = @"venu_name";

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
  
  if ( [elementName isEqualToString:@"event"] ) {
    self.currentEvent = [[Event alloc] init];
    self.storeCharacters = NO;
  } else if ( [elementName isEqualToString:kName_Title] || [elementName isEqualToString:kName_StartTime] || [elementName isEqualToString:kName_VenueName]) {
    [self.currentString setString:@""];
    self.storeCharacters = YES;
  }
}

@end
