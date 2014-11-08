//
//  AccelerometerViewController.h
//  TestBench
//
//  Created by Lewis, Jordan on 15/10/13.
//  Copyright (c) 2013 Lewis, Jordan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface AccelerometerViewController : UIViewController {
    CMMotionManager *motionManager;
    IBOutlet UILabel *xLabel;
    IBOutlet UILabel *yLabel;
    IBOutlet UILabel *zLabel;
}

@end
