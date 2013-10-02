#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[]) 
{
	Car *car = [[Car alloc] init];
	
	int i;
	for (i = 0; i < 4; i++) {
		Tire *tire;
    tire = [[Tire alloc]
            initWithPressure: 23 + i treadDepth:33 - i];
    
//    [tire setPressure: 23 + i];
//    [tire setTreadDepth: 33 - i];
    
		[car setTire: tire
         atIndex: i];
	}
	
	Engine *engine = [[Slant6 alloc] init];
	[car setEngine: engine];
	
	[car print];
  
  return (0);
	
} // main

