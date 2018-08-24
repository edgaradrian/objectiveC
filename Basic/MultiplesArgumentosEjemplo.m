//Ejemplo de Metodo con multiples argumentos

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

        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger dia = [cal ordinalityOfUnit:NSCalendarUnitDay i
                                         nUnit:NSCalendarUnitMonth
                                       forDate:now];

        NSLog(@"Éste es el día del mes %lu", dia);

    }//autoreleasepool
    return 0;
}//main
