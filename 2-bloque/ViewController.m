//
//  ViewController.m
//  2-bloque
//
//  Created by Victor  on 17/01/18.
//  Copyright © 2018 Victor . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)btnShowSecondVC:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"segueSecondVC" sender:nil];
    
}


@end
