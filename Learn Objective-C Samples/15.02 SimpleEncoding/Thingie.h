//
//  Thingie.h
//  15.02 SimpleEncoding
//
//  Created by Jay R Newlin on 10/3/13.
//
//
#import <Foundation/Foundation.h>

@interface Thingie : NSObject <NSCoding> {
  NSString *name;
  int magicNumber;
  float shoeSize;
  NSMutableArray *subThingies;
}
@property (copy) NSString *name;
@property int magicNumber;
@property float shoeSize;
@property (retain) NSMutableArray *subThingies;

- (id)initWithName: (NSString *) n
       magicNumber: (int) mn
          shoeSize: (float) ss;

@end // Thingie

