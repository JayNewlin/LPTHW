//
//  Stack.m
//  Stacks
//
//  Created by Amit Bijlani on 12/6/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import "Stack.h"



@implementation Stack

- (id) init {
    if ( self = [super init] )
        _array = [NSMutableArray array];
    return self;
}

- (id) initWithItem: (id) x {
    id s = [self init];
    [s push:x]; 
    return s;
}

- (void) push: (id) x {
    [_array addObject:x];
}

- (id) pop {
    id x = [_array lastObject];
    [_array removeLastObject];
    return x;
}




@end
