#import <Foundation/NSObject.h>
#import <Foundation/Foundation.h>
#include <stdlib.h>

@interface Hello: NSObject

    @property (readonly) NSString *name;

    - (Hello *)initWithName:(NSString *)value;

    - (void)hello;

@end

@implementation Hello

    - (Hello *)initWithName:(NSString *)value
    {
        _name = value;
        return self;
    }

    - (void)hello
    {
        NSLog(@"Hello, %@!", self.name);
    }

@end

int main(void)
{
	NSLog(@"Hello from main!");

	id helloInstance;
	helloInstance=[[Hello alloc] initWithName:@"SomeName"];

	[helloInstance hello];

	[helloInstance dealloc];
	return EXIT_SUCCESS;
}
