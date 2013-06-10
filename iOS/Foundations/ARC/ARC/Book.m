//
//  Book.m
//  ARC
//
//  Created by Amit Bijlani on 11/30/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize title = _title;
@synthesize author = _author;

- (NSString *) description {
    return [NSString stringWithFormat:@"%@ - %@",self.title,self.author];
}

@end
