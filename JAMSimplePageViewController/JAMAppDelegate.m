
#import "JAMAppDelegate.h"
#import "JAMSimplePageViewController.h"
#import "JAMNumberedViewController.h"

@implementation JAMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *viewControllers = @[ [JAMNumberedViewController.alloc initWithNumber:@1],
                                  [JAMNumberedViewController.alloc initWithNumber:@2],
                                  [JAMNumberedViewController.alloc initWithNumber:@3],
                                  [JAMNumberedViewController.alloc initWithNumber:@4],
                                  [JAMNumberedViewController.alloc initWithNumber:@5] ];
    
    self.window = [UIWindow.alloc initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.darkGrayColor;
    self.window.rootViewController = [JAMSimplePageViewController.alloc initWithViewControllers:viewControllers transitionStyle:UIPageViewControllerTransitionStylePageCurl];
    [self.window makeKeyAndVisible];

    return YES;
}
							
@end
