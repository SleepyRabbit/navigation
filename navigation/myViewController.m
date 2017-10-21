//
//  myViewController.m
//  navigation
//
//  Created by 侯恩星 on 17/10/21.
//  Copyright © 2017年 侯恩星. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *str = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
//    NSString *jwt = @"#/list?jwt=";
    NSString *jwt = @"#/my?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.ewogICJpc3MiOiAidWNhc3QuY2MvYXBpIiwKICAiYXVkIjogInVjYXN0LmNjL2FwaSIsCiAgInN1YiI6ICI1OTM0OTUyZTE3ZGExNmMwN2VkNTAzODkiLAogICJuaWNrIjogIueejOedoeWFlCIsCiAgImlhdCI6IDE1MDg0OTE1ODcsCiAgImV4cCI6IDE1NDAwMjc1ODcsCiAgImp0aSI6ICIxMjM0NSIsCiAgInBlcm1pdCI6IFsKICAgICJhcGF5OnVzZXIiLAogICAgImJ1czpMIgogIF0KfQ.vyaEc_FRhDsxXT78s-WEigwdZbg4-v_imsLYAibkL2w";
    str = [str stringByAppendingString:jwt];
    NSURL *url = [NSURL URLWithString:str];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [_webview loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
