//
//  Person.h
//  BMITime
//
//  Created by Edgar Adrián on 25/08/18.
//  Copyright © 2018 Edgar Adrián. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

- (float)bodyMassIndex;

@end
