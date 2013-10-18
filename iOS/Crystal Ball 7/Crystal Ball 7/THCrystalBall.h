//
//  THCrystalBall.h
//  Crystal Ball 7
//
//  Created by Jay R Newlin on 10/18/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THCrystalBall : NSObject

@property (strong, nonatomic) NSArray *predictions;

- (NSString*) randomPrediction;

@end
