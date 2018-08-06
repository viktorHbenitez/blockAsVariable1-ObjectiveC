//
//  BDMSecondViewController.h
//  2-bloque
//
//  Created by Victor  on 17/01/18.
//  Copyright © 2018 Victor . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyBlock.h"

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txfNIP;

//@property blkResultNIPHandler blkSetNIP;

-(void)sendBlkNIP:(blkResultNIPHandler)handler;


@end
