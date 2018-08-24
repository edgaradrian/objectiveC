//  ChallengeDate Cap 12.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Datos de fecha
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1997];
        [comps setMonth:7];
        [comps setDay:4];
        [comps setHour:10];
        [comps setMinute:17];
        [comps setSecond:0];

        NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

        NSDate *fechaNacimiento = [cal dateFromComponents:comps];

        //Datos actuales
        NSDate *ahora = [NSDate date];
        double segundos = [ahora timeIntervalSinceDate:fechaNacimiento];

        NSLog(@"Han pasado %f segundos desde mi nacimiento %@", segundos, fechaNacimiento);

    }//autoreleasepool
    return 0;
}//main
