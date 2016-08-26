//
//  CatalogViewController.h
//  ProyectoJoyas
//
//  Created by RobertoHerrera on 8/25/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Home.h"
#import "TableViewCell.h"

@interface CatalogViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblAvengers;
@property (strong, nonatomic) IBOutlet UILabel *lblItemSelect;
@property (strong, nonatomic) IBOutlet UITableView *tblAmande;
@property (strong, nonatomic) IBOutlet UIButton *btnBack;
- (IBAction)btnPressBack:(id)sender;
@end