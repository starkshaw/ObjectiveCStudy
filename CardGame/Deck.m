#import "Deck.h"

@interface Deck ()

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (NSMutableArray *) cards {
	if(!_cards) _cards = [[NSMutableArray alloc] init];
	return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
	if (atTop) {
		[self.cards insertObject:card atIndex:0];
	} else {
		[self.cards addObject:card]
	}
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
	[self addCard:card atTop:NO];
}

- (Card *)drawRandomCard {
	
}

@end