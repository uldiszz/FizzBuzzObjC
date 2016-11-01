//
//  ViewController.m
//  FizzBuzzObj-C
//
//  Created by Uldis Zingis on 01/11/16.
//  Copyright © 2016 Uldis Zingis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberInputField;
@property (weak, nonatomic) IBOutlet UITextView *outputLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)runTapped:(id)sender {
    [self.numberInputField resignFirstResponder];
    [self playFizzBuzz:self.numberInputField.text.integerValue];
}

- (void)playFizzBuzz:(NSInteger)number {
    NSString *output = @"";
    for (int n = 1; n <= number; n++) {
        if (n % 3 == 0 && n % 5 == 0) {
            output = [output stringByAppendingString:@"DevMountain\n"];
        } else if (n % 3 == 0) {
            output = [output stringByAppendingString:@"Dev\n"];
        } else if (n % 5 == 0) {
            output = [output stringByAppendingString:@"Mountain\n"];
        } else {
            NSString *num = [NSString stringWithFormat:@"%i\n", n];
            output = [output stringByAppendingString:num];
        }
    }
    self.outputLabel.text = output;
}

@end


