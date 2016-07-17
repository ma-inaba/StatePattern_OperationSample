//
//  exitRoomOperation.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "ExitRoomOperation.h"
#import "Context.h"
#import "ExistRoom.h"

@implementation ExitRoomOperation

- (void)run {
    
    // ここで実際に部屋から退出する通信を行う

    // 状態をExistRoom(部屋が存在する)に変更する
    [[Context sharedInstance] changeState:[ExistRoom new]];
    
    if ([[Context sharedInstance].delegate respondsToSelector:@selector(onExitRoom)]) {
        [[Context sharedInstance].delegate onExitRoom];
    }
}

@end
