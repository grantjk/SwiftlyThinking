
#import "SegmentedViewController.h"

@interface SegmentedViewController ()

@property (nonatomic, strong) UISegmentedControl *segmentedControl;

@end

@implementation SegmentedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.segmentedControl = [[UISegmentedControl alloc]
        initWithItems:@[ @"All", @"Filter1", @"Filter2" ]];

    [self.segmentedControl addTarget:self
                              action:@selector(segmentedControlTapped:)
                    forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.segmentedControl];
}

- (void)segmentedControlTapped:(id)sender {
    switch (self.segmentedControl.selectedSegmentIndex) {
    case 0:
        NSLog(@"All selected");
        break;
    case 1:
        NSLog(@"Filter1 selected");
        break;
    case 2:
        NSLog(@"Filter2 selected");
        break;
    default:
        break;
    }
}

@end
