//
//  main.m
//  DateList
//
//  Created by Edgar Adrián on 2/15/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];
        
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        NSLog(@"Hay %lu dates", [dateList count]);
        
        for(NSDate *d in dateList){
            NSLog(@"Object is: %@", d);
        }
        
    }
    return 0;
}
