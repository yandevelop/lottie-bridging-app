//
//  ViewController.m
//  Lottie-Bridging-App
//
//  Created by jan on 04.04.24.
//

#import "ViewController.h"
#import "Lottie-Swift.h"

@interface ViewController ()
@property (nonatomic, strong) LottieAnimationView *animationView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.animationView = [[LottieAnimationView alloc] init];
    
    // this loads the animation from your apps bundle
    [self.animationView loadAnimationWithName:@"Pulse"];
    [self.animationView setLoopMode:LottieLoopModeLoop];
    
    [self.view addSubview:self.animationView];
    
    [self.animationView play];
    
    // this colors the animation green
    [self.animationView colorAnimation:[UIColor systemGreenColor] keypath:@"**.Color"];
}


@end
