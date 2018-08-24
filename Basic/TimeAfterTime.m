// Ejemplo manejo dates

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"El nuevo date es %@", now);
        NSLog(@"Se aloja en %p", now);

        double segundos = [now timeIntervalSince1970];
        NSLog(@"Han pasado %f desde 1970", segundos);

        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"En 100000 segundos será: %@", later);

    }//autoreleasepool
    return 0;
}//main
