//
//  BlogPost.h
//  BlogReader
//
//  Created by Jay R Newlin on 7/18/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;

// Designated Initializer
- (id) initWithTitle:(NSString *)title;
+ (id) blogPostWithTitle:(NSString *)title;

@end
