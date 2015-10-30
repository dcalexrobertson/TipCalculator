//
//  ViewController.m
//  TipCalculator
//
//  Created by Alex on 2015-10-30.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTip:(id)sender {
    float tipPercentage = [self.tipPercentageTextField.text floatValue] * 0.01;
    float tip = [self.billAmountTextField.text floatValue] * tipPercentage;
    self.tipAmountLabel.text = [NSString stringWithFormat:@"%0.2f", tip];
}

@end
