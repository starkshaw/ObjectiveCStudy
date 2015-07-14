//
//  PlayingCard.m
//  Stanford_1
//
//  Created by Zhenbang Xiao on 12/07/2015.
//  Copyright (c) 2015 Zhenbang Xiao. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;   // Manual generated getter and setter

- (NSString *) contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    // return [NSString stringWithFormat:@"%d%@", self.rank, self.suit]; Out-dated usage
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) validSuits
{
    return @[@"❤︎",@"◆",@"♠",@"♣"];
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";    // Exception handle
}

- (void) setSuit:(NSString *) suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

+ (NSUInteger) maxRank
{
    return [[self rankStrings] count]-1;
}

+ (NSArray *) rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

- (void) setRank:(NSUInteger) rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end