//
//  NSBundle+MyStrings.m
//  VideoTagHandler
//
//  Created by adachi.yuichi on 2014/04/21.
//  Copyright (c) 2014年 adachi.yuichi. All rights reserved.
//

#import "NSBundle+MyStrings.h"

@implementation NSBundle (MyStrings)

- (NSString *)myVideoPageHTMLString
{
    static NSString *htmlString;
    
    if (!htmlString) {
        NSString *htmlPath = [self pathForResource:@"video"
                                            ofType:@"html"];
        NSError *error = nil;
        htmlString =
        [NSString stringWithContentsOfFile:htmlPath
                                  encoding:NSUTF8StringEncoding
                                     error:&error];
        if (error) {
            DebugLog(@"video.htmlの読み込みに失敗しました");
        }
    }
    
    return htmlString;
}

- (NSString *)myVideoPlayEndHandlerJavaScriptString
{
    static NSString *videoHandlerString;
    
    if (!videoHandlerString) {
        NSString *videoHandlerPath = [self pathForResource:@"videoplayendhandler"
                                                    ofType:@"js"];
        NSError *error = nil;
        videoHandlerString =
        [NSString stringWithContentsOfFile:videoHandlerPath
                                  encoding:NSUTF8StringEncoding
                                     error:&error];
        if (error) {
            DebugLog(@"videoplayendhandler.jsの読み込みに失敗しました");
        }
    }
    
    return videoHandlerString;
}

- (NSString *)myVideoFullScreenHandlerJavaScriptString
{
    static NSString *videoHandlerString;
    
    if (!videoHandlerString) {
        NSString *videoHandlerPath = [self pathForResource:@"videofullscreenhandler"
                                                    ofType:@"js"];
        NSError *error = nil;
        videoHandlerString =
        [NSString stringWithContentsOfFile:videoHandlerPath
                                  encoding:NSUTF8StringEncoding
                                     error:&error];
        if (error) {
            DebugLog(@"videofullscreenhandler.jsの読み込みに失敗しました");
        }
    }
    
    return videoHandlerString;
}

@end
