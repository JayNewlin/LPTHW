// Modified by JRN 10/3/2013 from 15.02

#import "Thingie.h"


int main (int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

Thingie *thing1;
thing1 = [[Thingie alloc]
          initWithName: @"thing1"
          magicNumber: 42
          shoeSize: 10.5];

NSLog (@"some thing: %@", thing1);
    
    NSData *freezeDried;
    freezeDried = [NSKeyedArchiver archivedDataWithRootObject: thing1];
        
    [thing1 release];

    thing1 = [NSKeyedUnarchiver unarchiveObjectWithData: freezeDried];

    NSLog (@"reconstituted thing: %@", thing1);
    
//    Thingie *anotherThing;
//
//    anotherThing =  [[[Thingie alloc]
//              initWithName: @"thing2"
//              magicNumber: 23
//              shoeSize: 13.0] autorelease];
//    [thing1.subThingies addObject: anotherThing];
//    anotherThing =  [[[Thingie alloc]
//              initWithName: @"thing3"
//              magicNumber: 17
//              shoeSize: 9.0] autorelease];
//    [thing1.subThingies addObject: anotherThing];
//
//    NSLog (@"thing with things: %@", thing1);
//    
//    freezeDried = [NSKeyedArchiver archivedDataWithRootObject: thing1];
//
//    thing1 = [NSKeyedUnarchiver unarchiveObjectWithData: freezeDried];
//    NSLog (@"reconstituted multithing: %@", thing1);
//    
//    [thing1.subThingies addObject: thing1];
//
//    // You really don't want to do this...
//    // NSLog (@"infinite thinging: %@", thing1);
//
//    freezeDried = [NSKeyedArchiver archivedDataWithRootObject: thing1];
//    
//    thing1 = [NSKeyedUnarchiver unarchiveObjectWithData: freezeDried];
  
    [pool release];
    return (0);

} // main
