#import "Card.h"

@interface Card()

@end

@implementation Card
/*
@synthesize chosen = _chosen;
@synthesize matched = _matched;

- (BOOL) chosen {
	return _chosen;
}

- (void)setChosen:(BOOL)chosen {
	_chosen = chosen;
}

- (BOOL)matched {
	return _matched;
}

- (void)setMatched:(BOOL)matched {
	_matched = matched;
}
*/
- (int)match:(NSArray *) otherCards {
	int score = 0;
	for(Card *card in otherCards) {
		if ([card.contents isEqualToString:self.contents]) {
			score = 1;
		}
	}
	return score;
}

@end