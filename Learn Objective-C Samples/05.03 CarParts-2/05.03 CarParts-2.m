#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"


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



