//
//  Event.m
//  Events
//
//  Created by Jay R Newlin on 7/15/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import "Event.h"

@implementation Event

@synthesize title = _title;
@synthesize startTime = _startTime;
@synthesize venueName = _venueName;

- (NSString *)description {
  return [NSString stringWithFormat:@"%@ - %@", _title, _venueName];
  
}


@end
