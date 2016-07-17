//
//  ExistRoom.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "ExistRoom.h"

#import "OperationQueueManager.h"
#import "JoinRoomOperation.h"
#import "DeleteRoomOperation.h"

@implementation ExistRoom

- (BOOL)joinRoom {
    
    // ここでjoinRoomする処理を行う。
    JoinRoomOperation *op = [JoinRoomOperation new];
    [[OperationQueueManager sharedInstance] addOperation:op];
    
    return YES;
}

- (BOOL)deleteRoom {
 
    // ここでdeleteRoomする処理を行う。
    DeleteRoomOperation *op = [DeleteRoomOperation new];
    [[OperationQueueManager sharedInstance] addOperation:op];
    
    return YES;
}

@end
