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
@synthesize dateFormatter = _dateFormatter;
@synthesize eventsArray = _eventsArray;


- (void)viewDidLoad
{
    [super viewDidLoad];
  
  self.xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://api.eventful.com/rest/events/search?app_key=tgLkQkC4wv8vMNhr&location=19106&category=music&date=future"]];
  
  self.xmlParser.delegate = self;
  
  self.eventsArray = [NSMutableArray array];
  self.currentString = [NSMutableString string];
  
  self.dateFormatter = [[NSDateFormatter alloc] init];
  self.dateFormatter.locale = [NSLocale currentLocale];
  self.dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
  
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

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.eventsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"EventTableViewCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
  }
  
  Event *event = [self.eventsArray objectAtIndex:indexPath.row];
  NSLog(@"%@", event);
  
  cell.textLabel.text = event.title;
  cell.detailTextLabel.text = event.venueName;
  
  return cell;
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

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
  if (self.storeCharacters) [self.currentString appendString:string];
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
  if ( [elementName isEqualToString:kName_Title]) {
    self.currentEvent.title = _currentString;
  } else if ( [elementName isEqualToString:kName_VenueName]) {
    self.currentEvent.venueName = _currentString;
  } else if ( [elementName isEqualToString:kName_StartTime]) {
    self.currentEvent.startTime = [self.dateFormatter dateFromString: _currentString];
  } if ( [elementName isEqualToString:kName_Event]) {
    [self finishedCurrentEvent:_currentEvent];
  }
  
  self.storeCharacters = NO;

}

- (void) finishedCurrentEvent:(Event*)e{
  [self.eventsArray addObject:e];
  self.currentEvent = nil;
}

- (void) parserDidEndDocument:(NSXMLParser *)parser {
  NSLog(@"%d", self.eventsArray.count);
  [self.tableView reloadData];
}





@end
