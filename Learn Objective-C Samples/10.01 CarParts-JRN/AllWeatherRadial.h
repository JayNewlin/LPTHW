#import "Tire.h"

@interface AllWeatherRadial : Tire
{
  float rainHandling;
  float snowHandling;
}

- (void) setRainHandling: (float) rainHandling;
- (float) rainHandling;

- (void) setSnowHandling: (float) snowHandling;
- (float) snowHandling;

@end // AllWeatherRadial

