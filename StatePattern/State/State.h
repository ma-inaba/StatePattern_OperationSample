//
//  State.h
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface State : NSObject

// 部屋を作成する
- (BOOL)createRoom;

// 部屋に入室する
- (BOOL)joinRoom;

// 部屋から退室する
- (BOOL)exitRoom;

// 部屋を削除する
- (BOOL)deleteRoom;

@end
