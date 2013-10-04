#import "Car.h"
#import "Garage.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

Car *makeCar (NSString *name, NSString *make, NSString *model, int modelYear, int numberOfDoors, float mileage, int horsepower) {
  Car *car = [[Car alloc] init];
  
  car.name = name;
  car.make = make;
  car.model = model;
  car.modelYear = modelYear;
  car.numberOfDoors = numberOfDoors;
  car.mileage = mileage;
  
  Slant6 *engine = [[Slant6 alloc] init];
  [engine setValue:[NSNumber numberWithInt:horsepower]
            forKey:@"horsepower"];
  car.engine = engine;
  
  // Make some tires
  int i;
  for(i=0; i<4; i++) {
    Tire *tire = [[Tire alloc] init];
    [car setTire: tire atIndex: i];
  }
  
  return (car);
} // makeCar

int main (int argc, const char * argv[])
{

  Garage *garage = [[Garage alloc] init];
  garage.name = @"Leno's Garage";
  
  Car *car;
  
  car = makeCar (@"Herbie", @"Honda", @"CRX", 1984, 2, 110000, 58);
  [garage addCar: car];
  car = makeCar (@"Badger", @"Acura", @"Integra", 1987, 5, 217036.7, 130);
  [garage addCar: car];
  car = makeCar (@"Elvis", @"Acura", @"Legend", 1989, 4, 28123.4, 151);
  [garage addCar: car];
  car = makeCar (@"Phoenix", @"Pontiac", @"Firebird", 1969, 2, 85128.3, 345);
  [garage addCar: car];
  car = makeCar (@"Streaker", @"Pontiac", @"Silver Streak", 1950, 2, 39100.0, 36);
  [garage addCar: car];
  car = makeCar (@"Judge", @"Pontiac", @"GTO", 1969, 2, 45132.2, 370);
  [garage addCar: car];
  car = makeCar (@"Paper Car", @"Plymouth", @"Valiant", 1965, 2, 76800, 105);
  [garage addCar: car];
  
  [garage print];
  
  NSNumber *count = [garage valueForKeyPath:@"cars.@count"];
  NSLog(@"That's a total of %@ cars.", count);
  
  NSNumber *sum = [garage valueForKeyPath:@"cars.@sum.mileage"];
  NSLog(@"In total, they have traveled %@ miles. Wow! That's a lot of driving!", sum);
  
  NSNumber *avgMileage = [garage valueForKeyPath:@"cars.@avg.mileage"];
  NSLog(@"Our cars average %@ miles driven.", avgMileage);
  
  return (0);
	
} // main

