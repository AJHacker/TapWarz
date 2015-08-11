//
//  ViewController.h
//  REACTION TIME
//
//  Created by Arihant Jain on 2/24/13.
//  Copyright (c) 2013 AJcoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
   IBOutlet UIButton *p1;
   IBOutlet UIButton *p2;
    IBOutlet UIButton *start;
    IBOutlet UILabel *p2score;
    IBOutlet UILabel *p1score;
    IBOutlet UILabel *p1label;
    IBOutlet UILabel *p2label;
    double p1int;
    int star;
    int gg;
    double p2int;
}
-(IBAction)start:(id)sender;
-(IBAction)p1tap:(id)sender;
-(IBAction)p2tap:(id)sender;
@end
