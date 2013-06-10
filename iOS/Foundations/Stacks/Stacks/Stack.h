//
//  Stack.h
//  Stacks
//
//  Created by Amit Bijlani on 12/6/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject {
    NSMutableArray *_array;
}

- (id) initWithItem: (id) x;

- (void) push: (id) x;
- (id) pop;

@end
