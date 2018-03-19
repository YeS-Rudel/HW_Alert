//
//  ViewController.m
//  FirstAlert
//
//  Created by Evgeny Knyazev on 19.03.2018.
//  Copyright © 2018 home. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize choice, textChoice;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sub:(id)sender {
    
    NSString *title = @"Желаете только";
    NSString *massage = [textChoice.text stringByAppendingString:@" ?"];
    NSString *input=[textChoice.text stringByAppendingString:@" ..."];
    NSString *okText=@"Да, спасибо!";
    choice.text=input;
    UIAlertController *alert= [UIAlertController alertControllerWithTitle:title message:massage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}
@end
