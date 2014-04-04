
#import "JAMNumberedViewController.h"

@interface JAMNumberedViewController ()
@property (nonatomic) NSNumber *number;
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
    UILabel *numberLabel = [UILabel.alloc initWithFrame:self.view.frame];
    numberLabel.text = self.number.description;
    numberLabel.textAlignment = NSTextAlignmentCenter;
    numberLabel.font = [UIFont boldSystemFontOfSize:144];
    [self.view addSubview:numberLabel];
    self.view.backgroundColor = UIColor.lightGrayColor;
}

@end
