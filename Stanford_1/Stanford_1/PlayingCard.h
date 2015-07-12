//
//  PlayingCard.h
//  Stanford_1
//
//  Created by Zhenbang Xiao on 12/07/2015.
//  Copyright (c) 2015 Zhenbang Xiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
