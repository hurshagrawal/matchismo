//
//  Card.h
//  Matchismo
//
//  Created by Hursh Agrawal on 8/12/13.
//  Copyright (c) 2013 Hursh Agrawal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;

@end
