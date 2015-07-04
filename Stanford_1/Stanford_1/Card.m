//
//  Card.m
//  Stanford_1
//
//  Created by Zhenbang Xiao on 04/07/2015.
//  Copyright (c) 2015 Zhenbang Xiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end