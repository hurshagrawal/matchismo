//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Hursh Agrawal on 8/12/13.
//  Copyright (c) 2013 Hursh Agrawal. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *deck;

@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.deck = [[PlayingCardDeck alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)flipCard:(UIButton *)sender {
    if (sender.isSelected) {
        sender.selected = NO;
    } else {
        // Draw a random card from the deck
        PlayingCard *card = [self.deck drawRandomCard];
        [sender setTitle:[card contents] forState:UIControlStateSelected];
        
        sender.selected = YES;
    }
    
    self.flipCount++;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flipz: %d", self.flipCount];
}

@end
