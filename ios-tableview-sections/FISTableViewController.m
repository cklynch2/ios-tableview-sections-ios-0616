//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISStudent *jenny = [[FISStudent alloc] initWithName:@"Jenny" favoriteFood:@"Mashed potatoes" favoriteColor:@"Yellow" favoriteMusicalArtist:@"Avishai Cohen" favoriteGame:@"Hide and Seek" otherFavorites:@[@"Sleeping", @"Singing in the shower", @"Dancing in the rain"]];
    FISStudent *joe = [[FISStudent alloc] initWithName:@"Joe" favoriteFood:@"Mac and cheese" favoriteColor:@"Green" favoriteMusicalArtist:@"Sade" favoriteGame:@"Real life, it's a game!" otherFavorites: @[@"Eating", @"Going on adventures", @"Spending time with the people I love"]];
    FISStudent *claire = [[FISStudent alloc] initWithName:@"Claire" favoriteFood:@"Aioli on everything" favoriteColor:@"Black"favoriteMusicalArtist:@"Too many to choose!" favoriteGame:@"Scrabble" otherFavorites:@[@"Riding my bike around NYC", @"Sunshine", @"Glass of wine and a great book"]];
    FISStudent *matt = [[FISStudent alloc] initWithName:@"Matt" favoriteFood:@"Beef Wellington" favoriteColor:@"Blue" favoriteMusicalArtist:@"Piano and violin pieces" favoriteGame:@"Smash Brothers Melee" otherFavorites:@[@"Chocolate mousse cake", @"German Shepherds"]];
    self.students = @[jenny, joe, claire, matt];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return (NSInteger)self.students.count;
}

// This solution is not very dynamic, because it hard codes the fact that there are four 'favorites' properties in addition to the favorite things array. Would be better perhaps to make those properties elements of the favorite things array..?
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    FISStudent *studentForSection = self.students[(NSUInteger)section];
    return (NSInteger)studentForSection.favoriteThings.count + 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"favoriteThingCell" forIndexPath:indexPath];
    
    FISStudent *studentForCell = self.students[(NSUInteger)indexPath.section];
    if (indexPath.row == 0) {
        cell.textLabel.text = [NSString stringWithFormat:@"Food: %@", studentForCell.favoriteFood];
    } else if (indexPath.row == 1) {
        cell.textLabel.text = [NSString stringWithFormat:@"Color: %@", studentForCell.favoriteColor];
    } else if (indexPath.row == 2) {
        cell.textLabel.text = [NSString stringWithFormat:@"Music: %@", studentForCell.favoriteMusicalArtist];
    } else if (indexPath.row == 3) {
        cell.textLabel.text = [NSString stringWithFormat:@"Game: %@", studentForCell.favoriteGame];
    } else {
        NSString *favoriteThingForCell = studentForCell.favoriteThings[(NSUInteger)indexPath.row - 4];
        cell.textLabel.text = favoriteThingForCell;
    }
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%li", indexPath.row];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    FISStudent *studentForSection = self.students[(NSUInteger)section];
    return studentForSection.name;
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 3;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
