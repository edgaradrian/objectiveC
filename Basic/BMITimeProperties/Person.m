//
//  Person.m
//  BMITime
//
//  Created by Edgar Adrián on 25/08/18.
//  Copyright © 2018 Edgar Adrián. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / ( h * h );
}//bodyMassIndex

@end
