//
//  ViewController.m
//  TenSeconds
//
//  Created by 大角真輝 on 2015/01/17.
//  Copyright (c) 2015年 matyaki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    count = 0.0 ;
    countLabel.text = [NSString stringWithFormat:@"%.2f", count] ;
}
-(IBAction)start{
    if(![timer isValid])
    {
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                 target:self
                                               selector:@selector(up)
                                               userInfo:nil
                                                repeats:YES
                 ];
        label.text = @"";
        label.textColor = [UIColor blackColor];
        
        
    }

    
    
    
}

-(IBAction)stop
{
    if ([timer isValid])
    {
        [timer invalidate];
        
//        if(10.20>=count && count>=9.80){
//            label.text = @"PERFECT";
 //           label.textColor = [UIColorredColor];
        // }
        [self hantei] ;

    }
 
}

-(IBAction)clear
{
    count = 0;
    countLabel.text = [NSString stringWithFormat:@"%.2f" , count];
    label.text = @"";

    
}

-(void)up
{
    count=count + 0.01;
    countLabel.text = [NSString stringWithFormat:@"%.2f" , count];
}

-(void)hantei
{
    int number=10;
    if (count>= number-0.20 && count <= number +0.20) {
        label.text = @"PERFECT";
        label.textColor = [UIColor redColor];
    }else if(count>=number-0.30 && count <= number +0.30){
        label.text = @"GREAT";
        label.textColor = [UIColor blueColor];
    }else if(count>=number-0.50 && count <= number +0.50){
        label.text = @"GOOD";
        //label.textColor = [UIColor yellowColor];
    }else{
        label.text= @"BAD";
        //label.textColor = [UIColor greenColor];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

