//
//  CardGameViewController.m
//  Machismo
//
//  Created by Maxim  on 3/23/16.
//  Copyright © 2016 Maxim . All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"
#import "Deck.h"

@interface CardGameViewController ()

@property (nonatomic, strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scorelabel;

@end

@implementation CardGameViewController

- (CardMatchingGame *)game
{
    
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:
                         [self.cardButtons count] usingDeck:[self createDeck]];
    
    return _game;
    
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
}


- (IBAction)touchCardButton:(UIButton *)sender
{
    NSUInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        NSUInteger cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card]
                    forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backGroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled = !card.matched;
    }
    self.scorelabel.text = [NSString stringWithFormat:@"Score: %ld", self.game.score];
}

- (NSString *)titleForCard:(Card *)card
{
    return card.isChosen ? card.contents : @"";
}

- (UIImage *)backGroundImageForCard:(Card *)card
{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}











@end