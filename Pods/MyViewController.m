//
//  MyViewController.m
//  Pods
//
//  Created by Apple MBP on 14-7-3.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "MyViewController.h"
#import <CommonCrypto/CommonDigest.h>
#import "CTLClient.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    label.text = @"我的世界杯";
    label.backgroundColor = [UIColor greenColor];
    self.navigationItem.titleView = label;
    //    self.title = @"我爱世界杯";
    label.layer.cornerRadius = 5;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 0, 40, 40);
    button.backgroundColor = [UIColor clearColor];
    [button setTitle:@"带塞" forState:UIControlStateNormal];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    
    UIButton *buttona = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttona.frame = CGRectMake(100, 200, 120, 40);
    [buttona setTitle:@"push" forState:UIControlStateNormal];
    [buttona addTarget:self action:@selector(pushitlog) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttona];
    //    不能做和view有关的，初始化界面
    UIButton *bbb = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bbb.frame = CGRectMake(100, 400, 120, 40);
    [bbb setTitle:@"info" forState:UIControlStateNormal];
    [bbb addTarget:self action:@selector(getinfo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bbb];
}

- (void)pushitlog
{
    NSDictionary *dic = @{
                          @"phoneNum"      : @"13122785292",
                          @"userPassword"  : [self sha1:@"li0910"],
                          @"machineImei"   : @"123",
                          @"simImsi"       : @"123",
                          @"networkIp"     : @"123",
                          @"machineBrand"  : @"123",
                          @"machineModel"  : @"123",
                          @"osVersion"     : @"3",
                          @"appVersion"    : @"123",
                          //                          @"phoneNum"         : @"phoneNum",
                          };
    NSDictionary *dicHeader = @{
                                @"userId": @"12",
                                @"userToken": @"123",
                                @"machineImei": @"123",
                                @"version": @"1.0",
                                @"platform":@"express",
                                
                                };
    CTLClient *client = [CTLClient shareInstance];
    [client userLogin:dicHeader parameters:dic completionBlock:^(Results *logInResult, NSError *error) {
        NSLog(@"%@",logInResult);
        if (error) {
            
        }else{
            NSLog(@"the result is %@,%@",logInResult.result,logInResult.result);
        }
    }];
}
- (NSString*) sha1:(NSString *)asss
{
    const char *cstr = [asss cStringUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [NSData dataWithBytes:cstr length:asss.length];
    
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, data.length, digest);
    
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return output;
}


- (void)getinfo
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
