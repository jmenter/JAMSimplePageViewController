
#import <UIKit/UIKit.h>

@interface JMSimplePageViewController : UIPageViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

- (id)initWithViewControllers:(NSArray *)viewControllers transitionStyle:(UIPageViewControllerTransitionStyle)style;
- (id)initWithViewControllerClassNames:(NSArray *)classNames transitionStyle:(UIPageViewControllerTransitionStyle)style;

@end
