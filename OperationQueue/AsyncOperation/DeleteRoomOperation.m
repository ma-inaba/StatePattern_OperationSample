//
//  DeleteRoomOperation.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "DeleteRoomOperation.h"
#import "Context.h"
#import "NonExistRoom.h"

@implementation DeleteRoomOperation

- (void)run {
    
    // ここで実際に部屋を削除する通信を行う

    // 状態をNonExistRoom(部屋が存在しない)に変更する
    [[Context sharedInstance] changeState:[NonExistRoom new]];
    
    if ([[Context sharedInstance].delegate respondsToSelector:@selector(onDeleteRoom)]) {
        [[Context sharedInstance].delegate onDeleteRoom];
    }
}

@end
