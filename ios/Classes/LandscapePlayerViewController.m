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

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeLeft;
}

- (BOOL)shouldAutorotate{
    return NO;
}

@end
