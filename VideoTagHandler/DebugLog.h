//
//  DebugLog.h
//  VideoTagHandler
//
//  Created by adachi yuichi on 2014/04/27.
//  Copyright (c) 2014年 adachi.yuichi. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG

#define DebugLog(arg, ...) NSLog(arg, ##__VA_ARGS__)

#else

#define DebugLog(arg, ...)

#endif