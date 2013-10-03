#import <Foundation/Foundation.h>


@interface NSString (NumberConvenience)

- (NSNumber *) lengthAsNumber;

@end // NumberConvenience


@implementation NSString (NumberConvenience)

- (NSNumber *) lengthAsNumber
{
    unsigned int length = [self length];
	
	return ([NSNumber numberWithUnsignedInt: length]);
	
} // lengthAsNumber

@end // NumberConvenience


int main (int argc, const char *argv[])
{
	@autoreleasepool {
	
		NSMutableDictionary *dict;
		dict = [NSMutableDictionary dictionary];
		
		[dict setObject: [@"hello" lengthAsNumber]
				 forKey: @"hello"];
		
		[dict setObject: [@"iLikeFish" lengthAsNumber]
				 forKey: @"iLikeFish"];
		
		[dict setObject: [@"Once upon a time" 
						  lengthAsNumber]
				 forKey: @"Once upon a time"];
		
		NSLog (@"%@", dict);
	
	}
	
	return (0);
	
} // main
