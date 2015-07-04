//
//  Card.h
//  Stanford_1
//
//  Created by Zhenbang Xiao on 04/07/2015.
//  Copyright (c) 2015 Zhenbang Xiao. All rights reserved.
//
#import <Foundation/NSObject.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;

@end

