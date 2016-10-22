#import "NameCell.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[NameCell class] forCellReuseIdentifier:@"NameCellIdentifier"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NameCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NameCellIdentifier" forIndexPath:indexPath];
    cell.titleLabel.text = @"I can write objc";
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

@end
