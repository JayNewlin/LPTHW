//
//  THCrystalBall.m
//  Crystal Ball 7
//
//  Created by Jay R Newlin on 10/18/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "THCrystalBall.h"

@implementation THCrystalBall

@synthesize predictions = _predictions;

- (NSArray *) predictions {
  if (_predictions == nil) {
    _predictions = [[NSArray alloc] initWithObjects:
                    @"It is certain",
                    @"It is decidedly so",
                    @"All signs say YES",
                    @"The stars are not aligned",
                    @"My reply is NO",
                    @"It is doubtful",
                    @"Better not tell you now",
                    @"Concentrate, and ask again",
                    @"Unable to answer now",
                    @"Without a doubt",
                    @"Yes, definitely",
                    @"You may rely on it",
                    @"As I see it, yes",
                    @"Most likely",
                    @"The outlook is good",
                    @"Yes",
                    @"Signs point to YES",
                    @"Reply hazy; try again",
                    @"Ask again later",
                    @"Cannot predict now",
                    @"Don't count on it",
                    @"My sources say NO",
                    @"Outlook not so good",
                    @"Very doubtful",nil];
  }
  return _predictions;
}

- (NSString*) randomPrediction {
  int random = arc4random_uniform(self.predictions.count);
  return [self.predictions objectAtIndex:random];
}

@end
