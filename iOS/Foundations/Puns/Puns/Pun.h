//
//  Pun.h
//  Puns
//
//  Created by Nick Pettit on 1/25/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Pun : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * rating;

@end
