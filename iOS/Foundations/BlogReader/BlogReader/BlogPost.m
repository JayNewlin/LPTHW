//
//  BlogPost.m
//  BlogReader
//
//  Created by Jay R Newlin on 7/18/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle:(NSString *)title {
  self = [ super init];
  
  if ( self ){
    self.title = title;
  }
  return self;
}

+ (id) blogPostWithTitle:(NSString *)title{
  return [[self alloc] initWithTitle:title];
}

@end
