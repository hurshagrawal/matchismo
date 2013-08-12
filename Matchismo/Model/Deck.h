//
//  Deck.h
//  Matchismo
//
//  Created by Hursh Agrawal on 8/12/13.
//  Copyright (c) 2013 Hursh Agrawal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
