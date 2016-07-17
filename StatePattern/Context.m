//
//  Context.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "Context.h"

@implementation Context
static Context *_instance;

#pragma mark - Singleton Implementation

+ (void)initialize {
    
    @synchronized(self) {
        if (_instance == nil) {
            _instance = [[Context alloc] initInternal];
        }
    }
}

+ (Context *)sharedInstance {
    
    return _instance;
}

- (id)init {
    
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (id)initInternal {
    
    self = [super init];
    
    if (self) {
        [self initData];
    }
    
    return self;
}

+ (id)allocWithZone:(NSZone *)zone {
    
    @synchronized(self) {
        if (!_instance) {
            _instance = [super allocWithZone:zone];
        }
    }
    return _instance;
}

- (void)initData {
    
    // 初期状態は「部屋が存在しない状態」
    [self changeState:[NonExistRoom new]];
}

- (void)changeState:(State *)state
{
    // 状態遷移を行う。
    self.state = state;
}

- (BOOL)createRoom {
    
    // 現在の状態に合わせてStateクラスのメソッドを呼び出す。
    return [self.state createRoom];
}

- (BOOL)joinRoom {
    
    // 現在の状態に合わせてStateクラスのメソッドを呼び出す。
    return [self.state joinRoom];
}

- (BOOL)exitRoom {
    
    // 現在の状態に合わせてStateクラスのメソッドを呼び出す。
    return [self.state exitRoom];
}

- (BOOL)deleteRoom {
    
    // 現在の状態に合わせてStateクラスのメソッドを呼び出す。
    return [self.state deleteRoom];
}
@end
