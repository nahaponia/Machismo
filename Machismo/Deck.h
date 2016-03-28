//
//  Deck.h
//  Machismo
//
//  Created by Maxim  on 3/22/16.
//  Copyright © 2016 Maxim . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;





















@end
