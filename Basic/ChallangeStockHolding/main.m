//
//  main.m
//  StockHolding
//
//  Created by Edgar Adrián on 25/08/18.
//  Copyright © 2018 Edgar Adrián. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Se declara un NSMutableArray
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        //Objeto 1
        StockHolding *stock1 = [[StockHolding alloc] init];
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares:40];
        
        //Se agrega el objeto al array
        [array addObject:stock1];
        
        //Objeto 2
        StockHolding *stock2 = [[StockHolding alloc] init];
        stock2.purchaseSharePrice = 12.19;
        stock2.currentSharePrice = 10.56;
        stock2.numberOfShares = 90;
        
        //Se agrega el objeto al array
        [array addObject:stock2];
        
        //Objeto 3
        StockHolding *stock3 = [[StockHolding alloc] init];
        [stock3 setPurchaseSharePrice:45.10];
        stock3.currentSharePrice = 49.51;
        [stock3 setNumberOfShares:210];
        
        //Se agrega el objeto al array
        [array addObject:stock3];
        
        //Impresion de los valores de cada uno
        for (StockHolding *s in array) {
            //propiedades
            NSLog(@"purchasePrice: %f", [s purchaseSharePrice]);
            NSLog(@"currentPrice: %f", [s currentSharePrice]);
            NSLog(@"numberOfShares: %d", [s numberOfShares]);
            
            //metodos de instancia
            NSLog(@"costInDollars: %f", [s costInDollars]);
            NSLog(@"valueInDollars: %f", [s valueInDollars]); 
        }//for
        
    }//autoreleasepool
    return 0;
}
