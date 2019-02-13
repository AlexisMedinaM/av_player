//
//  LandscapePlayerViewController.m
//  av_player
//
//  Created by Alex Medina Meneses on 2/6/19.
//

#import "LandscapePlayerViewController.h"

@implementation LandscapePlayerViewController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldAutorotate{
    return NO;
}

@end
