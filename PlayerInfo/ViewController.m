//
//  ViewController.m
//  PlayerInfo
//
//  Created by MRJ on 2019/3/3.
//  Copyright © 2019 MRJ. All rights reserved.
//

#import "ViewController.h"
#import <WMPlayer.h>
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WMPlayerModel *playerModel = [WMPlayerModel new];
    playerModel.title = @"电影名称";
    playerModel.verticalVideo = NO;
//    NSURL *URL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"mp4"]];
//    playerModel.videoURL = [NSURL URLWithString:[URL absoluteString]];
    playerModel.videoURL = [NSURL URLWithString:@"http://v3-dy.ixigua.com/6101244b0ac2cc6fcd8953e790b2344f/5c7b8d91/video/m/2209d8ef0df677049228d2070075f1977e41161914d40000484ac8b66bb4/?rc=anNxNHRkdHBwazMzN2kzM0ApQHRAb0dGNDgzOzgzNDg6ODY2PDNAKXUpQGczdylAZmh1eXExZnNoaGRmOzRALzRwNG9zNjZxXy0tMC0wc3MtbyNvIz4yNTYtLS8tLS0uLi0tLi9pOmItbyM6YDBvI3BiZnJoXitqdDojLy5e&version_code=5.0.0&pass-region=1&pass-route=1&js_sdk_version=1.8.0.0&app_name=aweme&vid=9C5A7239-6340-4D93-B6AE-A801D2CAE0E4&app_version=5.0.0&device_id=49197895366&channel=App%20Store&mcc_mnc=46011&aid=1128&screen_width=1242&openudid=400b17e7788f9a991fb6bdd267f3474fc3035d9d&os_api=18&ac=WIFI&os_version=12.1&device_platform=iphone&build_number=50006&device_type=iPhone10%2C2&iid=63783154165&idfa=381287DA-D664-4204-BD14-037B65B65514"];
    WMPlayer * wmPlayer = [WMPlayer playerWithModel:playerModel];
    [self.view addSubview:wmPlayer];
    [wmPlayer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.top.equalTo(self.view);
        make.height.mas_equalTo(wmPlayer.mas_width).multipliedBy(9.0/16);
    }];
    [wmPlayer play];
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
