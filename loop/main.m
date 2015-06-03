#import <Foundation/Foundation.h>

int main (int argc, const char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	for (int i = 0; i < 10; i++) {
		NSLog(@"This is %d times!\n", i);
	}
	[pool release];
	return 0;
}