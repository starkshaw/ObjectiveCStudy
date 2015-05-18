#import <Foundation/Foundation.h>
#import <math.h>

int main (int argc, const char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	double a = 2, b = 3;
	NSLog(@"\nBEFORE\na: %lf\nb: %lf\n", a, b);
	a = a+b;
	b = a-b;
	a = a-b;
	NSLog(@"\nAFTER\na: %lf\nb: %lf\n", a, b);
	[pool release];
	return 0;
}