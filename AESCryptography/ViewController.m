//
//  ViewController.m
//  AESCryptography
//
//  Created by Mayur Birari on 22/11/12.
//  Copyright (c) 2012 Extentia Information Technology. All rights reserved.
//

#import "ViewController.h"
#import "NSString+AESCrypt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* dummyString=@"Steve Job";
    
    NSLog(@"Encrypt String- %@",dummyString);
    
    NSString* encrypt_decrypt_Key=@"apple";
    
    NSString *encryptString = [dummyString
                                  AES256EncryptWithKey:encrypt_decrypt_Key];
    
    NSLog(@"Encrypt String- %@",encryptString);
    
    NSString *decryptString = [encryptString
                               AES256DecryptWithKey:encrypt_decrypt_Key];
    
    NSLog(@"Decrypt String- %@",decryptString);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
