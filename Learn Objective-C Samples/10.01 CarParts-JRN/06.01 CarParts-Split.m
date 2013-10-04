#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[]) 
{
  Car *car = [[[Car alloc] init] autorelease];
	
  car.name=@"Herbie";
  car.make = @"Volkswagen";
  car.model = @"Beetle";
  car.numberOfDoors = 2;
  car.modelYear = 1966;
  car.mileage = 56000;
	
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
	
	car.engine = [[[Slant6 alloc] init] autorelease];
	
	[car print];
  

//  Remove the copying logic, since it was for a specific chapter. Keep it for reference, since I'm building each chapter on the previous.
//  NSLog(@"Now, make the copy.");
//  
//  Car *carCopy = [car copy];
//  [carCopy print];
//  [carCopy release];
  
  NSLog(@"In summary: Car is %@", car);
  
  [car release];
  
  return (0);
	
} // main

