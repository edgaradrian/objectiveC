//
//  StockHolding.h
//  StockHolding
//
//  Created by Edgar Adrián on 25/08/18.
//  Copyright © 2018 Edgar Adrián. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float) costInDollars;
- (float) valueInDollars;

@end
