//NSMutableArray Ejemplo

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Se crean los objectos NSDate
        NSDate *ahora = [NSDate date];
        NSDate *manana = [ahora dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *ayer = [ahora dateByAddingTimeInterval:-24 * 60 * 60];

        //Se crea el arreglo mutable
        NSMutableArray *dateList = [NSMutableArray array];

        //Se agregan los objetos al arreglo
        [dateList addObject:ahora];
        [dateList addObject:manana];

        //Colocar la fecha de ayer al inicio
        [dateList insertObject:ayer atIndex:0];

        //Imprimir los arreglos
        for (NSDate *date in dateList) {
            NSLog(@"La fecha es %@", date);
        }//for

        //Remover primer objeto
        [dateList removeObjectAtIndex:0];
        NSLog(@"Ahora el primer objeto del arreglo es: %@", [dateList objectAtIndex:0]);

    }
    return 0;
}
