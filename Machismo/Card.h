//
//  Card.h
//  Machismo
//
//  Created by Maxim  on 3/22/16.
//  Copyright © 2016 Maxim . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString *contents;
@property(nonatomic, getter=isChosen) BOOL *chosen;
@property(nonatomic, getter=isMatched) BOOL *matched;

-(int)match:(NSArray *)otherCards;

@end
