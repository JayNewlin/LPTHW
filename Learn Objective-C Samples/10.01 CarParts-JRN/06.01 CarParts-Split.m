#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[]) 
{
	Car *car = [[Car alloc] init];
	
  [car setName:@"Herbie"];
	
  int i;
	for (i = 0; i < 4; i++) {
		AllWeatherRadial *tire;
    
    tire = [[AllWeatherRadial alloc] init];
    tire.rainHandling = 20 + i;
    tire.snowHandling = 28 + i;
    NSLog(@"Tire %d's handling is %.f, %.f",
          i,
          tire.rainHandling,
          tire.snowHandling);
    
		[car setTire: tire
         atIndex: i];
            
    [tire release];
	}
	
	Engine *engine = [[Slant6 alloc] init];
	[car setEngine: engine];
	
	[car print];
  
  return (0);
	
} // main

