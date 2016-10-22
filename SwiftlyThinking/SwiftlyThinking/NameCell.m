#import "NameCell.h"

@implementation NameCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (UILabel *)titleLabel {
    return self.textLabel;
}

@end
