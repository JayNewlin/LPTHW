//
//  Pun.h
//  Puns
//
//  Created by Jay R. Newlin during Training
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Pun : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * rating;

@end
