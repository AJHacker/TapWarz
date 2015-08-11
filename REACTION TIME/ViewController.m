//
//  ViewController.m
//  REACTION TIME
//
//  Created by Arihant Jain on 2/24/13.
//  Copyright (c) 2013 AJcoder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)start:(id)sender{
    [start setHidden:TRUE];
    star = 1;
    p1int=0;
    p2int=0;
    [self update];
}
- (void)p1tap:(id)sender{
    if (star==1) {
        p1int = p1int+1;
        p2int = p2int-.5;
        [self update];
        
    }
}
- (void)p2tap:(id)sender{
    if (star==1) {
        p1int = p1int-.5;
        p2int = p2int+1;
        [self update];
    }
    
}

-(void)update{
    NSString *theValue = [NSString stringWithFormat:@"%g", p1int];
    p1score.text=theValue;
    NSString *theValue2 = [NSString stringWithFormat:@"%g", p2int];
    p2score.text=theValue2;
    if (p2int>=100) {
        star=0;
        [start setHidden:false];
        p1label.text = @"YOU LOSE";
        p2label.text = @"YOU WIN!";
    }
    
    
    
    
    if (p1int>=100) {
        star=0;
        [start setHidden:false];
        p2label.text = @"YOU LOSE";
        p1label.text = @"YOU WIN!";

    }

}


- (void)viewDidLoad
{
    [super viewDidLoad];
    p2score.transform = CGAffineTransformMakeRotation( ( 180 * M_PI ) / 180 );
    p2label.transform = CGAffineTransformMakeRotation( ( 180 * M_PI ) / 180 );
    [p2label setHidden:TRUE];
    [p1label setHidden:TRUE];
    star = 0;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
