//
//  AccelerometerViewController.m
//  TestBench
//
//  Created by Lewis, Jordan on 15/10/13.
//  Copyright (c) 2013 Lewis, Jordan. All rights reserved.
//

#import "AccelerometerViewController.h"

@interface AccelerometerViewController ()

@end

@implementation AccelerometerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    motionManager = [[CMMotionManager alloc] init];
    
    motionManager.accelerometerUpdateInterval = 0.05;
    
    if ([motionManager isAccelerometerAvailable])
    {
        NSOperationQueue *queue = [[NSOperationQueue alloc] init];
        [motionManager startAccelerometerUpdatesToQueue:queue withHandler:^(CMAccelerometerData *accelerometerData, NSError *error)
         {
             dispatch_async(dispatch_get_main_queue(), ^{
                 xLabel.text = [NSString stringWithFormat:@"%.2f",accelerometerData.acceleration.x];
                 yLabel.text = [NSString stringWithFormat:@"%.2f",accelerometerData.acceleration.y];
                 zLabel.text = [NSString stringWithFormat:@"%.2f",accelerometerData.acceleration.z];
             });
         }];
    }
    else NSLog(@"not active");

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
