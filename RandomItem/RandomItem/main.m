//
//  main.m
//  RandomItem
//
//  Created by Edgar Adrián on 4/24/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Zero" atIndex:0];
        
        for (int i=0; i < [items count]; i++) {
            NSString *item = [items objectAtIndex:i];
            NSLog(@"El item es: %@",item);
        }
        
        for (NSString *item in items){
            NSLog(@"El item es; %@",item);
        }
        
        NSLog(@"Setting items to nil...");
        items = nil;
        
        
        //Format String
        int a = 1;
        float b = 2.5;
        char c = 'A';
        
        NSLog(@"Integer: %d Float: %f Char: %c",a,b,c);
        
        //Accessing instance variables
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNumber:@"A1B2C"];
        
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithouthName = [[BNRItem alloc] init];
        NSLog(@"%@",itemWithouthName);
        
        //Testing subclass
        NSMutableArray *itemsBNR = [[NSMutableArray alloc] init];
        
        for (int i = 0 ; i < 10 ; i++) {
            BNRItem *item = [BNRItem randomItem];
            [itemsBNR addObject:item];
        }//addObjects to itemsBNR
        
        for (BNRItem *item in itemsBNR) {
            NSLog(@"%@",item);
        }
        
        NSLog(@"Setting itemsBNR to nil...");
        itemsBNR = nil;
        
    }
    return 0;
}//main
