#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[]) 
{
	Car *car = [[Car alloc] init];
	
	int i;
	for (i = 0; i < 4; i++) {
		AllWeatherRadial *tire;
    
    tire = [[AllWeatherRadial alloc] init];
    
		[car setTire: tire
         atIndex: i];
            
    [tire release];
	}
	
	Engine *engine = [[Slant6 alloc] init];
	[car setEngine: engine];
	
	[car print];
  
  return (0);
	
} // main

