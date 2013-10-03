//
//  Thingie.m
//  15.02 SimpleEncoding
//
//  Created by Jay R Newlin on 10/3/13 from 15.02
//
//

#import "Thingie.h"


@implementation Thingie
@synthesize name;
@synthesize magicNumber;
@synthesize shoeSize;
@synthesize subThingies;

- (id)initWithName: (NSString *) n
       magicNumber: (int) mn
          shoeSize: (float) ss {
  if (self = [super init]) {
    self.name = n;
    self.magicNumber = mn;
    self.shoeSize = ss;
    self.subThingies = [NSMutableArray array];
  }
  
  return (self);
}

- (void) dealloc {
  [name release];
  [subThingies release];
  
  [super dealloc];
  
} // dealloc


- (void) encodeWithCoder: (NSCoder *) coder {
    // nothing here yet
} // encodeWithCoder


- (id) initWithCoder: (NSCoder *) decoder {
    // nothing here yet, either
  return (nil);
  
} // initWithCoder


- (NSString *) description {
  NSString *description =
  [NSString stringWithFormat: @"%@: %d/%.1f %@",
   name, magicNumber, shoeSize, subThingies];
  
  return (description);
  
} // description


@end // Thingie
