
#import "JAMNumberedViewController.h"

@interface JAMNumberedViewController ()
@property (nonatomic) NSNumber *number;
@property (nonatomic) CAGradientLayer *backgroundGradient;
@end

@implementation JAMNumberedViewController

CGFloat randomFloat(CGFloat maximum)
{
    return ((CGFloat)arc4random() / (CGFloat)4294967296) * maximum;
}

- (instancetype)initWithNumber:(NSNumber *)number;
{
    if (!(self = [super initWithNibName:nil bundle:nil])) return nil;
    
    self.number = number;
    return self;
}

- (void)viewDidLoad;
{
    self.backgroundGradient = CAGradientLayer.new;
    self.backgroundGradient.colors = @[ (id)[UIColor colorWithHue:randomFloat(1)
                                                       saturation:randomFloat(1)
                                                       brightness:randomFloat(1)
                                                            alpha:randomFloat(1)].CGColor,
                                        (id)[UIColor colorWithHue:randomFloat(1)
                                                       saturation:randomFloat(1)
                                                       brightness:randomFloat(1)
                                                            alpha:randomFloat(1)].CGColor];
    [self.view.layer addSublayer:self.backgroundGradient];
    
    UILabel *numberLabel = [UILabel.alloc initWithFrame:self.view.frame];
    numberLabel.text = self.number.description;
    numberLabel.textAlignment = NSTextAlignmentCenter;
    numberLabel.font = [UIFont boldSystemFontOfSize:144];
    numberLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:numberLabel];
}

- (void)viewWillLayoutSubviews;
{
    self.backgroundGradient.frame = self.view.frame;
}

@end
