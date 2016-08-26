//
//  EmailViewController.m
//  ProyectoJoyas
//
//  Created by RobertoHerrera on 8/24/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "EmailViewController.h"

@interface EmailViewController ()

@end

@implementation EmailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**/
-(void)sendMail:(id)sender{
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:@"Test mail"];
    [mailComposer setMessageBody:@"Testing message for the test mail" isHTML:NO];
     [self presentModalViewController:mailComposer animated:YES];
     }
     
#pragma mark - mail compose delegate
     -(void)mailComposeController:(MFMailComposeViewController *)controller
             didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
                 if (result) {
                     NSLog(@"Result : %d",result);
                 }
                 if (error) {
                     NSLog(@"Error : %@",error);
                 }
                 [self dismissModalViewControllerAnimated:YES];
                 
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
