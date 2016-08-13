//
//  XXToutiaoSDK.h
//  XXToutiaoSDK
//
//  Created by guanglong on 16/8/2.
//  Copyright © 2016年 bjhl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum:NSInteger {
    
    XTTFeedItemType_unknown = -1,
    
    XTTFeedItemType_article = 1,
    XTTFeedItemType_video = 2,
    XTTFeedItemType_topic = 3,
    XTTFeedItemType_album = 4,
    XTTFeedItemType_SinglePic = 5,
    XTTFeedItemType_FeedOptimize = 6,
    
} XTTFeedItemType;

typedef enum {
    
    XTTSocialShareTypeUnknown,
    
    XTTSocialShareSubTypeWechatTimeline, // 微信朋友圈
    XTTSocialShareSubTypeWechatSession, // 微信好友
    XTTSocialShareSubTypeQQFriend, // 手机QQ
    XTTSocialShareSubTypeQZone, // QQ空间
    XTTSocialShareTypeSinaWeibo, // 新浪微博
    
} XTTSocialShareType;

typedef enum {
    
    XTTSocialShareStateUnknown,
    
    XTTSocialShareStateBegin,
    XTTSocialShareStateSuccess,
    XTTSocialShareStateFail,
    XTTSocialShareStateCancel,
    
} XTTSocialShareState;

typedef void(^XTTShareStateChangedHandler)(XTTSocialShareState state, NSError* error);

typedef void(^XTTSocialShareHandler)( XTTSocialShareType type, NSString* title, NSString* summary, NSArray* images, NSString* url, XTTShareStateChangedHandler completeHandler );

typedef void(^XTTNeedLoginHandler)( void(^completeHandler)(BOOL loginSuccess) );

@interface XXToutiaoSDK : NSObject

// 只有添加了 libTalkingData.a ，该设置才有效。默认为YES
+ (void)setShouldUseTalkingData:(BOOL)shouldUseTalkingData;

// 必须要设置，用于匿名登录
+ (void)setDeviceId:(NSString*)deviceID;

+ (void)registerSocialShareHandler:(XTTSocialShareHandler)shareHandler;
+ (void)registerNeedLoginHandler:(XTTNeedLoginHandler)needloginHandler;

+ (void)loginWithUserId:(NSString*)userId;
+ (void)logout;

+ (void)showTouTiaoFromController:(UIViewController*)fromController;
+ (void)showDetailWithItemType:(XTTFeedItemType)itemType itemId:(NSString*)itemId fromController:(UIViewController*)fromController;


@end
