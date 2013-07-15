//
//  Event.h
//  Events
//
//  Created by Jay R Newlin on 7/15/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSDate *startTime;
@property (nonatomic, copy) NSString *venueName;

@end
