//
//  Pun.h
//  Puns
//
//  Created by Jay R Newlin on 7/11/13.
//  Copyright (c) 2013 Treehouse Island Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Pun : NSManagedObject

@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSString * title;

@end
