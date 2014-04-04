
#import "JAMNumberedViewController.h"

@interface JAMNumberedViewController ()
@property (nonatomic) NSNumber *number;
@property (nonatomic) CAGradientLayer *backgroundGradient;
@end

@implementation JAMNumberedViewController

- (instancetype)initWithNumber:(NSNumber *)number;
{
    if (!(self = [super initWithNibName:nil bundle:nil])) return nil;
    
    self.number = number;
    return self;
}

- (void)viewDidLoad;
{
    self.backgroundGradient = CAGradientLayer.new;
    self.backgroundGradient.colors = @[ (id)self.randomColor.CGColor,
                                        (id)self.randomColor.CGColor];
    [self.view.layer addSublayer:self.backgroundGradient];
    
    UILabel *numberLabel = [UILabel.alloc initWithFrame:self.view.frame];
    numberLabel.text = self.number.description;
    numberLabel.textAlignment = NSTextAlignmentCenter;
    numberLabel.font = [UIFont boldSystemFontOfSize:144];
    numberLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    numberLabel.backgroundColor = UIColor.clearColor;
    [self.view addSubview:numberLabel];
}

- (void)viewWillLayoutSubviews;
{
    self.backgroundGradient.frame = self.view.frame;
}

- (UIColor *)randomColor;
{
    return [UIColor colorWithHue:[self randomFloat:1]
                      saturation:[self randomFloat:1]
                      brightness:[self randomFloat:1]
                           alpha:[self randomFloat:1]];
}

- (CGFloat)randomFloat:(CGFloat)floatMaximum;
{
    return ((CGFloat)arc4random() / (CGFloat)4294967296) * floatMaximum;
}

@end
