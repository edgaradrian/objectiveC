//
//  BNRItem.h
//  RandomItem
//
//  Created by Edgar Adrián on 4/24/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRItem : NSObject


@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;
@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

+(instancetype)randomItem;

-(instancetype) initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

-(instancetype) initWithItemName:(NSString *)name;

-(instancetype) initWithItemName:(NSString *)name
                    serialNumber:(NSString *)sNumber;

@end

NS_ASSUME_NONNULL_END
