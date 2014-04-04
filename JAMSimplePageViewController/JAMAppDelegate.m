
#import "JAMAppDelegate.h"
#import "JAMSimplePageViewController.h"
#import "JAMNumberedViewController.h"

@implementation JAMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSMutableArray *viewControllers = NSMutableArray.new;
    for (int i = 1; i <= 10; i++) {
        [viewControllers addObject:[JAMNumberedViewController.alloc initWithNumber:@(i)]];
    }

    self.window = [UIWindow.alloc initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"TexturedBackgroundColor"]];
    self.window.rootViewController = [JAMSimplePageViewController.alloc initWithViewControllers:viewControllers transitionStyle:UIPageViewControllerTransitionStyleScroll];
    [self.window makeKeyAndVisible];

    return YES;
}
							
@end
