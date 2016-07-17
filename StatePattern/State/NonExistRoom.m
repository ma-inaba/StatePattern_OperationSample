//
//  NonExistRoom.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "NonExistRoom.h"

#import "OperationQueueManager.h"
#import "CreateRoomOperation.h"

@implementation NonExistRoom

- (BOOL)createRoom {
    
    // ここでcreateRoomする処理を行う。
    CreateRoomOperation *op = [CreateRoomOperation new];
    [[OperationQueueManager sharedInstance] addOperation:op];
    
    return YES;
}

@end
