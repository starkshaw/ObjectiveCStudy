#import <Foundation/Foundation.h>

int main (int argc, const char *argv[]) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"Hello World!");
	[pool release];
	return 0;
}