//
//  BlogPost.h
//  BlogReader
//
//  Created by Jay R Newlin on 7/18/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject {
  NSString *title;
  NSString *author;
}

- (void) setTitle:(NSString *)title;
- (NSString *) title;

@end
