//
//  Pun.h
//  Puns
//
//  Created by Amit Bijlani on 12/13/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pun : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSNumber *rating;


+ (id) punWithTitle:(NSString *) title rating:(int)rating;

@end
