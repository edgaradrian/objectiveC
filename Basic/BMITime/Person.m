//
//  Person.m
//  BMITime
//
//  Created by Edgar Adrián on 25/08/18.
//  Copyright © 2018 Edgar Adrián. All rights reserved.
//

#import "Person.h"

@implementation Person

- (float)heightInMeters
{
    return heightInMeters;
}//heightInMeters

- (void)setHeightInmeters:(float)h
{
    heightInMeters = h;
}//setHeightInmeters

- (int)weightInKilos
{
    return weightInKilos;
}

- (void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}//setWeightInKilos

-(float)bodyMassIndex
{
    return weightInKilos / ( heightInMeters * heightInMeters );
}//bodyMassIndex

@end
