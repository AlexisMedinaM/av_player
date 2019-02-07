#import "AvPlayerPlugin.h"
#import "LandscapePlayerViewController.h"

@implementation AvPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"av_player"
            binaryMessenger:[registrar messenger]];
  AvPlayerPlugin* instance = [[AvPlayerPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"displayVideo" isEqualToString:call.method]) {
      NSDictionary *dictionary = call.arguments;
      NSString *urlString = [dictionary objectForKey:@"url"];
      [self displayVideoWithURLString:urlString];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

-(void)displayVideoWithURLString:(NSString *)urlString {
    NSLog(@"urlString: %@", urlString);
    NSURL *channelURL = [NSURL fileURLWithPath:urlString];
    AVPlayer *player = [AVPlayer playerWithURL:channelURL];
    LandscapePlayerViewController *playerVC = [LandscapePlayerViewController new];
    playerVC.player = player;
    [player play];
    [UIApplication.sharedApplication.keyWindow.rootViewController presentViewController:playerVC
                                                                               animated:YES
                                                                             completion:nil];
}

@end
