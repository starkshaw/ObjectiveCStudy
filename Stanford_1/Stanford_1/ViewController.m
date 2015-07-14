//
//  ViewController.m
//  Stanford_1
//
//  Created by Zhenbang Xiao on 04/07/2015.
//  Copyright (c) 2015 Zhenbang Xiao. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;

@end

@implementation ViewController

- (Deck *) deck
{
    if (_deck) {
        _deck = [self createDeck];
    }
    return _deck;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);   // Console output
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]) {
        UIImage *cardImage = [UIImage imageNamed:@"backCard"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *card = [self.deck drawRandomCard];
        UIImage *cardImage = [UIImage imageNamed:@"blankCard"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
        NSLog(@"Content: %@", card.contents);
    }
    self.flipCount++;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
