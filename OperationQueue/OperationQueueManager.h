//
//  OperationQueueManager.h
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AsyncOperation.h"

@interface OperationQueueManager : NSObject

@property NSOperationQueue *operationQue;

#pragma mark - Singleton Implementation
+ (OperationQueueManager *)sharedInstance;
- (id)init UNAVAILABLE_ATTRIBUTE;

- (void)addOperation:(AsyncOperation *)operation;

@end
