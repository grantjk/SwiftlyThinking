#import "AddressCell.h"
#import "NameCell.h"
#import "SectionedTableViewController.h"

typedef NS_ENUM(NSUInteger, Section) {
    SectionName,
    SectionAddress,
    Section_COUNT
};
typedef NS_ENUM(NSUInteger, NameRow) {
    NameRowFirst,
    NameRowLast,
    NameRow_COUNT
};
typedef NS_ENUM(NSUInteger, AddressRow) {
    AddressRowHome,
    AddressRowWork,
    AddressRow_COUNT
};

@interface SectionedTableViewController ()

@end

@implementation SectionedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return Section_COUNT;
}

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 2;
//}

//- (NSInteger)tableView:(UITableView *)tableView
// numberOfRowsInSection:(NSInteger)section {
//    switch (section) {
//    case 0:
//        return 2;
//    case 1:
//        return 2;
//    }
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    switch (section) {
    case SectionName:
        return NameRow_COUNT;
    case SectionAddress:
        return AddressRow_COUNT;
    }
    return 0;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView
//         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    switch (indexPath.section) {
//    case 0:
//        switch (indexPath.row) {
//        case 0: {
//            NameCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"NameCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.titleLabel.text = @"first name";
//            return cell;
//
//            break;
//        }
//        case 1: {
//            NameCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"NameCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.titleLabel.text = @"last name";
//            return cell;
//
//            break;
//        }
//        }
//    case 1:
//        switch (indexPath.row) {
//        case 0: {
//            AddressCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"AddressCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.addressLabel.text = @"Home Address";
//            return cell;
//        }
//        case 1: {
//            AddressCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"AddressCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.addressLabel.text = @"Work Address";
//            return cell;
//        }
//        default:
//            break;
//        }
//    }
//
//    return nil;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView
//         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    switch (indexPath.section) {
//    case SectionName:
//        switch (indexPath.row) {
//        case NameRowFirst: {
//            NameCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"NameCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.titleLabel.text = @"first name";
//            return cell;
//
//            break;
//        }
//        case NameRowLast: {
//            NameCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"NameCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.titleLabel.text = @"last name";
//            return cell;
//
//            break;
//        }
//        }
//    case SectionAddress:
//        switch (indexPath.row) {
//        case AddressRowHome: {
//            AddressCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"AddressCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.addressLabel.text = @"Home Address";
//            return cell;
//        }
//        case AddressRowWork: {
//            AddressCell *cell = [tableView
//                dequeueReusableCellWithIdentifier:@"AddressCellIdentifier"
//                                     forIndexPath:indexPath];
//            cell.addressLabel.text = @"Work Address";
//            return cell;
//        }
//        default:
//            break;
//        }
//    }
//
//    return nil;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
    case SectionName:
        switch (indexPath.row) {
        case NameRowFirst: {
            NameCell *cell = [self nameCell:tableView forIndexPath:indexPath];
            cell.titleLabel.text = @"first name";
            return cell;
            break;
        }
        case NameRowLast: {
            NameCell *cell = [self nameCell:tableView forIndexPath:indexPath];
            cell.titleLabel.text = @"last name";
            return cell;

            break;
        }
        }
    case SectionAddress:
        switch (indexPath.row) {
        case AddressRowHome: {
            AddressCell *cell = [tableView
                dequeueReusableCellWithIdentifier:@"AddressCellIdentifier"
                                     forIndexPath:indexPath];
            cell.addressLabel.text = @"Home Address";
            return cell;
        }
        case AddressRowWork: {
            AddressCell *cell = [tableView
                dequeueReusableCellWithIdentifier:@"AddressCellIdentifier"
                                     forIndexPath:indexPath];
            cell.addressLabel.text = @"Work Address";
            return cell;
        }
        default:
            break;
        }
    }

    return nil;
}

- (NameCell *)nameCell:(UITableView *)tableView
          forIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:@"NameCellIdentifier"
                                           forIndexPath:indexPath];
}

@end
