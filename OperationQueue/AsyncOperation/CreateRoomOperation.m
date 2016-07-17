//
//  CreateRoomOperation.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "CreateRoomOperation.h"
#import "Context.h"
#import "ExistRoom.h"

@implementation CreateRoomOperation

- (void)run {
    
    // ここで実際に部屋を作成する通信を行う
    
    // 状態をExistRoom(部屋が存在する)に変更する
    [[Context sharedInstance] changeState:[ExistRoom new]];
    
    if ([[Context sharedInstance].delegate respondsToSelector:@selector(onCreateRoom)]) {
        [[Context sharedInstance].delegate onCreateRoom];
    }
}

@end
