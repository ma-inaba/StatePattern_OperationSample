//
//  Chatting.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "Chatting.h"

#import "OperationQueueManager.h"
#import "ExitRoomOperation.h"

@implementation Chatting

- (BOOL)exitRoom {
    
    // ここでexitRoomする処理を行う。
    ExitRoomOperation *op = [ExitRoomOperation new];
    [[OperationQueueManager sharedInstance] addOperation:op];
    
    return YES;
}

@end
