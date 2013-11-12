//
//  ViewController.m
//  MagicEightBall2.0
//
//  Created by John Andrews on 11/12/13.
//  Copyright (c) 2013 John Andrews. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *fortuneCookieResponse;
}

@end

@implementation ViewController
@synthesize shakeMagicEightBallButtonOutlet, answerDisplayLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    shakeMagicEightBallButtonOutlet.layer.cornerRadius = 8;
    shakeMagicEightBallButtonOutlet.layer.borderWidth = 1;
    shakeMagicEightBallButtonOutlet.layer.borderColor = [UIColor whiteColor].CGColor;
    shakeMagicEightBallButtonOutlet.clipsToBounds = YES;
    
    fortuneCookieResponse = @[@"Conquer your fears or they will conquer you",
                                       @"You only need look to your own reflection for inspiration. Because you are Beautiful!",
                                       @"Rivers need springs",
                                       @"Good news from afar may bring you a welcome visitor",
                                       @"When all else seems to fail, smile for today and just love someone",
                                       @"When you look down, all you see is dirt, so keep looking up",
                                       @"If you are afraid to shake the dice, you will never throw a six",
                                       @"A single conversation with a wise man is better than ten years of study",
                                       @"Happiness is often a rebound from hard work",
                                       @"The world may be your oyster, but that doesn't mean you'll get it's pearl",
                                       @"You're true love will show himself to you under the moonlight",
                                       @"Do not follow where the path may lead. Go where there is no path...and leave a trail",
                                       @"Do not fear what you don't know",
                                       @"The object of your desire comes closer",
                                       @"If you wish to know the mind of a man, listen to his words",
                                       @"The most useless energy is trying to change what and who God so carefully created",
                                       @"Do not be covered in sadness or be fooled in happiness they both must exist",
                                       @"You will have unexpected great good luck",
                                       @"You will have a pleasant surprise",
                                       @"All progress occurs because people dare to be different",
                                       @"Your ability for accomplishment will be followed by success",
                                       @"We can't help everyone. But everyone can help someone",
                                       @"Express yourself: Don't hold back!"];
}


- (IBAction)shakeMagicEightBallButton:(id)sender {
    int randomSelection = arc4random() % fortuneCookieResponse.count - 1;
    answerDisplayLabel.text = [fortuneCookieResponse objectAtIndex:randomSelection];
}
@end
