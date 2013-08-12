//
//  PlayingCard.h
//  Matchismo
//
//  Created by Hursh Agrawal on 8/12/13.
//  Copyright (c) 2013 Hursh Agrawal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;
+ (NSUInteger)maxRank;

@end
