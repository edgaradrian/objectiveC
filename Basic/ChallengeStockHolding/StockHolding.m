//
//  StockHolding.m
//  StockHolding
//
//  Created by Edgar Adrián on 25/08/18.
//  Copyright © 2018 Edgar Adrián. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;

- (float) costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}//costInDollars

- (float) valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}//valueInDollars

@end
