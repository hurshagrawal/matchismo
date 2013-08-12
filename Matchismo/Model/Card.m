//
//  Card.m
//  Matchismo
//
//  Created by Hursh Agrawal on 8/12/13.
//  Copyright (c) 2013 Hursh Agrawal. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
