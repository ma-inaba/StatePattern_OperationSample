//
//  JoinRoomOperation.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "JoinRoomOperation.h"
#import "Context.h"
#import "Chatting.h"

@implementation JoinRoomOperation

- (void)run {
    
    // ここで実際に部屋に入室する通信を行う

    // 状態をChatting(チャット中)に変更する
    [[Context sharedInstance] changeState:[Chatting new]];
    
    if ([[Context sharedInstance].delegate respondsToSelector:@selector(onJoinRoom)]) {
        [[Context sharedInstance].delegate onJoinRoom];
    }
}

@end
