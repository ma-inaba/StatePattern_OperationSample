//
//  AsyncOperation.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "AsyncOperation.h"

@implementation AsyncOperation

- (void)run {

}

- (NSInvocationOperation *)setOperation {
    
    return [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(run) object:nil];
}
@end
