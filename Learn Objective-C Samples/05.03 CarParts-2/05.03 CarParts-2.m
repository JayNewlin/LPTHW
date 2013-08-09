#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"


// --------------------------------------------------

@interface AllWeatherRadial : Tire
@end // AllWeatherRadial


@implementation AllWeatherRadial

- (NSString *) description
{
	return (@"I am a tire for rain or shine.");
} // description

@end // AllWeatherRadial


// --------------------------------------------------

@interface Slant6 : Engine
@end // Slant6


@implementation Slant6

- (NSString *) description
{
	return (@"I am a slant-6. VROOOM!");
} // description

@end // Slant6


// --------------------------------------------------

int main (int argc, const char * argv[]) 
{
	Car *car = [Car new];
	
	int i;
	for (i = 0; i < 4; i++) {
		Tire *tire = [AllWeatherRadial new];
		
		[car setTire: tire
			 atIndex: i];
	}
	
	Engine *engine = [Slant6 new];
	[car setEngine: engine];
	
	[car print];
	
	return (0);
	
} // main



