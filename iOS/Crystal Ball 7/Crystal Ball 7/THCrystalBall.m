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
                    @"All signs say yes",
                    @"The stars are\nnot aligned",
                    @"My reply is\nNo",
                    @"It is doubtful",
                    @"Better not\ntell you now",
                    @"Concentrate, and ask again",
                    @"Unable to answer now",
                    @"Without a doubt",
                    @"Yes, definitely",
                    @"You may rely\non it",
                    @"As I see it,\nYes",
                    @"Most likely",
                    @"The outlook\nis good",
                    @"Signs point to\nYes",
                    @"Reply hazy;\ntry again",
                    @"Ask again later",
                    @"Cannot predict now",
                    @"Don't count on it",
                    @"My sources say\nNo",
                    @"Outlook not\nso good",
                    @"Very doubtful",nil];
  }
  return _predictions;
}

- (NSString*) randomPrediction {
  int random = arc4random_uniform(self.predictions.count);
  return [self.predictions objectAtIndex:random];
}

@end
