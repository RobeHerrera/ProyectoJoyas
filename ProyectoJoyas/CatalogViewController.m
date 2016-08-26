//
//  CatalogViewController.m
//  ProyectoJoyas
//
//  Created by RobertoHerrera on 8/25/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "CatalogViewController.h"

@interface CatalogViewController ()
@property NSMutableArray *stuffNames;
@property NSMutableArray *stuffImgs;
@end

@implementation CatalogViewController

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.stuffNames   = [[NSMutableArray alloc] initWithObjects: @"Quienes Somos?", @"Localiza nuestras tiendas", @"Compra online", @"Contacto",nil];
    
    self.stuffImgs   = [[NSMutableArray alloc] initWithObjects: @"question.jpg", @"map.png", @"cart.jpg", @"email.png", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.stuffNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 116;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.stuffNames[indexPath.row];
    cell.imgAmande.image   = [UIImage imageNamed:self.stuffImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //self.lblItemSelect.hidden = NO;
    //self.lblItemSelect.text = self.stuffNames[indexPath.row];
    
    if(indexPath.row==0){
        [self performSegueWithIdentifier:@"Who" sender:self];
        
    }
    if(indexPath.row==1){
        [self performSegueWithIdentifier:@"Maps" sender:self];
        
    }
    if(indexPath.row==2){
        [self performSegueWithIdentifier:@"Shop" sender:self];
        
    }
    if(indexPath.row==3){
        [self performSegueWithIdentifier:@"Email" sender:self];
        
    }
}

#pragma mark - Navigation


- (IBAction)btnPressBack:(id)sender {
    [self performSegueWithIdentifier:@"Home" sender:self];
}


////////////////////////////////////////////////////////////////////////////////////////////////
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.destinationViewController isKindOfClass:[Home class]]) {
    }
}
@end
