//  Challenge NSTimeZone

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSTimeZone *tiempo = [NSTimeZone systemTimeZone];

        if ([tiempo isDaylightSavingTime]) {
            NSLog(@"Sí es Daylight %@", tiempo);
        }
        else {
            NSLog(@"No es Daylight %@", tiempo);
        }//else

    }//autoreleasepool
    return 0;
}//main
