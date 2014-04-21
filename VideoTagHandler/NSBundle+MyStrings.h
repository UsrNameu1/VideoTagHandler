//
//  NSBundle+MyStrings.h
//  VideoTagHandler
//
//  Created by adachi.yuichi on 2014/04/21.
//  Copyright (c) 2014年 adachi.yuichi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  ファイルから文字列を生成するためのカテゴリです。
 */
@interface NSBundle (MyStrings)

/**
 *  ビデオページのHTML文字列を取得します
 *
 *  @return video.htmlのHTML文字列
 */
- (NSString *)myVideoPageHTMLString;

/**
 *  Play, Endedイベントのハンドラ用のJavaScript文字列を取得します。
 *
 *  @return videoplayendhandler.jsのJavaScript文字列
 */
- (NSString *)myVideoPlayEndHandlerJavaScriptString;

/**
 *  フルスクリーンモードに関わるイベントのハンドラ用のJavaScript文字列を取得します。
 *
 *  @return videofullscreenhandler.jsのJavaScript文字列
 */
- (NSString *)myVideoFullScreenHandlerJavaScriptString;

@end
