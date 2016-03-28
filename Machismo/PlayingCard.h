//
//  PlayingCard.h
//  Machismo
//
//  Created by Maxim  on 3/22/16.
//  Copyright © 2016 Maxim . All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
+ (NSArray *)rankStrings;


@end
