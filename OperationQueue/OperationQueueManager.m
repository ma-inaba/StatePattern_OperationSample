//
//  OperationQueueManager.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "OperationQueueManager.h"

@implementation OperationQueueManager
static OperationQueueManager *_instance;

#pragma mark - Singleton Implementation

+ (void)initialize {
    
    @synchronized(self) {
        if (_instance == nil) {
            _instance = [[OperationQueueManager alloc] initInternal];
        }
    }
}

+ (OperationQueueManager *)sharedInstance {
    
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
    
    self.operationQue = [NSOperationQueue new];
    self.operationQue.maxConcurrentOperationCount = 1;
}

- (void)addOperation:(AsyncOperation *)operation {
    
    [self.operationQue addOperation:[operation setOperation]];
}
@end
