//
//  ViewController.m
//  Notesi
//
//  Created by Nawwaf Almutairi on 10/17/15.
//  Copyright (c) 2015 Nawwaf. All rights reserved.
//

#import "ViewController.h"
#import "NSData+Additions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    printf("I can't wait to push this project to GitHub");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)logIn:(id)sender {
    
    NSLog(@"username:%@",self.userName.text);
    NSLog(@"password:%@",self.passWord.text);
    NSString *authStr = [NSString stringWithFormat:@"%@:%@", self.userName.text, self.passWord.text];
    NSData *authData = [authStr dataUsingEncoding:NSUTF8StringEncoding];
    NSString *authValue = [NSString stringWithFormat:@"Basic %@", [authData base64Encoding]];
    [request setValue:authValue forHTTPHeaderField:@"Authorization"];
}


@end
