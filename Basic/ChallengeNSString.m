//  Challenge NSString

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSHost *host = [NSHost currentHost];
        NSString *hostname = [host localizedName];

        NSLog(@"Nombre del equipo: %@",hostname);

    }//@autoreleasepool
    return 0;
}//main
