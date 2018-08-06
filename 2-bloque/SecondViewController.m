//
//  BDMSecondViewController.m
//  2-bloque
//
//  Created by Victor  on 17/01/18.
//  Copyright © 2018 Victor . All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
{

    // variable global de tipo bloque para tener acceso en nuestro scope
    blkResultNIPHandler blkSendStrText;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btnInvokeBlock:(UIButton *)sender {
    
    //Llamamos al metodo que tiene la invocacion del bloque
    [self ejecutaBloque];
    [self dismissViewControllerAnimated:true completion:nil];
}


-(void)ejecutaBloque{
    if (blkSendStrText) {
        // 2. Invoke the block
        blkSendStrText(_txfNIP.text);
    }
    
}
-(void)sendBlkNIP:(blkResultNIPHandler)handler{  // Set the handler in ViewController
    blkSendStrText = handler;
    
}




@end
