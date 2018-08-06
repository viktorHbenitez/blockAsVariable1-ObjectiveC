//
//  ViewController.m
//  2-bloque
//
//  Created by Victor  on 17/01/18.
//  Copyright © 2018 Victor . All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}


- (IBAction)btnShowSecondVC:(UIButton *)sender {
    [self performSegueWithIdentifier:@"segueSecondVC" sender:sender];
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"segueSecondVC"]) {
        
        NSLog(@"Podemos enviar datos a la siguinte vista");
        
        SecondViewController *VC = segue.destinationViewController;
        
        // 3. Define the block
        [VC sendBlkNIP:^(NSString *strNIP) {  // retrive the result to the block when is invoke
            
            self.lblShowText.text = strNIP;
            
        }];
        
        
    }
    
    
}


@end
