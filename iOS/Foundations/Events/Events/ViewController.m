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
@synthesize locationManager = _locationManager;
@synthesize currentLocation = _currentLocation;


- (void)viewDidLoad
{
    [super viewDidLoad];
  
  [self startLocationManager];
  
  self.eventsArray = [NSMutableArray array];
  self.currentString = [NSMutableString string];
  
  self.dateFormatter = [[NSDateFormatter alloc] init];
  self.dateFormatter.locale = [NSLocale currentLocale];
  self.dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
  

}

- (void) parseXMLWithLocation: (CLLocation *) location {

  NSString *stringURL;
  
  if ( location )
    stringURL = [NSString stringWithFormat:@"http://api.eventful.com/rest/events/search?app_key=tgLkQkC4wv8vMNhr&location=%1.6f,%1.6f&category=music&date=future",location.coordinate.latitude, location.coordinate.longitude];
  else
    stringURL = @"http://api.eventful.com/rest/events/search?app_key=tgLkQkC4wv8vMNhr&location=USA&category=music&date=future";
  
  self.xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:stringURL]];
  
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

#pragma mark -
#pragma mark CLLocationManagerDelegate

- (void) startLocationManager
{
  if ( !_locationManager ) {
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    _locationManager.distanceFilter = 100;
    _locationManager.purpose = @"We need your location to display events near you.";
    _locationManager.delegate = self;
  }
  
  [_locationManager startUpdatingLocation];
}

- (void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {

  NSLog(@"latitude %+.6f, longitude %+.6f accuracy %1.2f time %d", newLocation.coordinate.latitude, newLocation.coordinate.longitude, newLocation.horizontalAccuracy, abs ([newLocation.timestamp timeIntervalSinceNow]));
  NSTimeInterval locationAge = -[newLocation.timestamp timeIntervalSinceNow];
  if ( locationAge > 10.0 ) return;
  
  if ( newLocation.horizontalAccuracy < 0 ) return;
  
  if ( self.currentLocation == nil && newLocation.horizontalAccuracy <= _locationManager.desiredAccuracy ) {
    self.currentLocation = newLocation;
    [self parseXMLWithLocation:newLocation];
    [self stopLocationManager];
  }
  
  
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
  NSLog(@"%@", error);
  
  if ( [error code] != kCLErrorLocationUnknown){
    [self parseXMLWithLocation:nil];
    [self stopLocationManager];
  }
}

- (void) stopLocationManager {
  [self.locationManager stopUpdatingLocation];
}

@end
