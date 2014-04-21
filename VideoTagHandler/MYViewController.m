//
//  MYViewController.m
//  VideoTagHandler
//
//  Created by adachi.yuichi on 2014/04/21.
//  Copyright (c) 2014年 adachi.yuichi. All rights reserved.
//

#import "MYViewController.h"

#import "NSBundle+MyStrings.h"

/**
 *  ビデオハンドラのためのダミーURLスキーム
 */
static NSString *const VideoHandlerScheme = @"videohandler";

@interface MYViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation MYViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *htmlString = [[NSBundle mainBundle] myVideoPageHTMLString];
    [self.webView loadHTMLString:htmlString
                         baseURL:[[NSBundle mainBundle] bundleURL]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    //NSString *videoHandlerString = [[NSBundle mainBundle] myVideoPlayEndHandlerJavaScriptString];
    NSString *videoHandlerString = [[NSBundle mainBundle] myVideoFullScreenHandlerJavaScriptString];
    
    if (videoHandlerString) {
        [webView stringByEvaluatingJavaScriptFromString:videoHandlerString];
    }
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    if ([request.URL.scheme isEqualToString:VideoHandlerScheme]) {
#if DEBUG
        NSLog(@"%@", request.URL);
#endif
        return NO;
    }
    
    return YES;
}

@end
