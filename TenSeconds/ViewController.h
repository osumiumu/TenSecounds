//
//  ViewController.h
//  TenSeconds
//
//  Created by 大角真輝 on 2015/01/17.
//  Copyright (c) 2015年 matyaki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    IBOutlet UILabel *countLabel;
    
    float count;
    
    NSTimer *timer;
    
    IBOutlet UILabel  *label;
    
}

-(IBAction)start ;
-(IBAction)stop ;
-(IBAction)clear;

-(void)up ;
-(void)hantei;

@end

