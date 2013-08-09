#import <Foundation/Foundation.h>

// edited to use variable, instead of hard-coded integer (5)

int main (int argc, const char *argv[]) 
{
	int count = 16;
  
  NSLog (@"The numbers from 1 to %d:", count);
	
	int i;
	for (i = 1; i <= count; i++) {
		NSLog (@"%d\n", i);
	}
	
	return (0);
	
} // main
