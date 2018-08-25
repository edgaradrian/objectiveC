//Ejemplo NSArray empleando ciclo for

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Se crean los objectos NSDate
        NSDate *ahora = [NSDate date];
        NSDate *manana = [ahora dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *ayer = [ahora dateByAddingTimeInterval:-24 * 60 * 60];

        //Se crea el arreglo de las fechas
        NSArray *dateList = [NSArray arrayWithObjects:ahora, manana, ayer, nil];

        NSUInteger dateCount = [dateList count];

        for (int i=0 ; i < dateCount ; i++) {
            NSDate *date = [dateList objectAtIndex:i];
            NSLog(@"La fecha es: %@", date);
        }//for


    }
    return 0;
}
