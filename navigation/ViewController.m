//
//  ViewController.m
//  navigation
//
//  Created by 侯恩星 on 17/10/20.
//  Copyright © 2017 侯恩星. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *str = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
//    NSString *jwt = @"#/list?jwt=";
    NSString *jwt = @"#/list?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJpc3MiOiAidWNhc3QuY2MvYXBpIiwKICAiYXVkIjogInVjYXN0LmNjL2FwaSIsCiAgInN1YiI6ICI1OTM0OTUyZTE3ZGExNmMwN2VkNTAzODkiLAogICJuaWNrIjogIueejOedoeWFlCIsCiAgImlhdCI6IDE1MDg0OTE1ODcsCiAgImV4cCI6IDE1NDAwMjc1ODcsCiAgImp0aSI6ICIxMjM0NSIsCiAgInBlcm1pdCI6IFsKICAgICJhcGF5OnVzZXIiLAogICAgImJ1czpMIgogIF0KfQ.vyaEc_FRhDsxXT78s-WEigwdZbg4-v_imsLYAibkL2w";
    str = [str stringByAppendingString:jwt];
    NSURL *url = [NSURL URLWithString:str];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    NSLog(@"str: %@", str);
    NSLog(@"url: %@", url);
    NSLog(@"request: %@", request);
    [_webview loadRequest:request];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
