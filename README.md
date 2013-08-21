JMSimplePageViewController
==========================

A simple, self contained UIPageViewController.

To use, simply alloc and init with either an array of view controller class names (or an array of view controllers that you've already newed up) and a transition style (either scroll or page curl.)

For example:
<pre><code>
[JMSimplePageViewController.alloc initWithViewControllerClassNames:@[ @"MainViewController",
                                                                      @"AlternateViewController",
                                                                      @"ThirdViewController" ]
                                                   transitionStyle:UIPageViewControllerTransitionStyleScroll];

</code></pre>
...or...
<pre><code>
[JMSimplePageViewController.alloc initWithViewControllers:@[ TestViewController.new,
                                                             OtherViewController.new ]
                                          transitionStyle:UIPageViewControllerTransitionStylePageCurl];
</code></pre>

What you'll end up with is a UIPageViewController that is stuffed with UIViewControllers that automatically slides (or curls) left to right and has a UIPageControl indicator at the bottom, also wired up and ready to respond to taps.

Some things to note:
The array of view controller class names is checked and any classes that aren't actually view controllers get ignored.
The array of view controllers get checked and if anything in the array is not a view controller it raises an exception.

This is not super configurable but that's not the point. It's a simple page view controller, easy to use.
