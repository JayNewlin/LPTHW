//
//  Pun.m
//  Puns
//
//  Created by Amit Bijlani on 12/13/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import "Pun.h"

@implementation Pun

@synthesize title = _title;
@synthesize rating = _rating;


+ (id) punWithTitle:(NSString *) title rating:(int)rating {
    
    Pun __autoreleasing *p;
    p = [[Pun alloc] init];
         
    if ( p ) {
        p.title = title;
        p.rating = [NSNumber numberWithInt:rating];
    }
    return p;
}

@end
