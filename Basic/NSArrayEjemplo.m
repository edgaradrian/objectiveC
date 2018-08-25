//Ejemplo NSArray

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Se crean los objectos NSDate
        NSDate *ahora = [NSDate date];
        NSDate *manana = [ahora dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *ayer = [ahora dateByAddingTimeInterval:-24 * 60 * 60];

        //Se crea el arreglo de las fechas
        NSArray *dateList = [NSArray arrayWithObjects:ahora, manana, ayer, nil];

        //¿Cuantos objetos tiene mi arreglo?
        NSLog(@"Mi arreglo tiene %lu", [dateList count]);

        //Imprimelos
        NSLog(@"Mi primer objecto del arreglo es: %@", [dateList objectAtIndex:0]);
        NSLog(@"Mi segundo objecto es: %@", [dateList objectAtIndex:1]);
        NSLog(@"Mi tercer objecto es: %@", [dateList objectAtIndex:2]);


    }
    return 0;
}
