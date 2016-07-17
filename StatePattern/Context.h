//
//  Context.h
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NonExistRoom.h"

@protocol ContextDelegate <NSObject>

@optional

- (void)onCreateRoom;
- (void)onJoinRoom;
- (void)onExitRoom;
- (void)onDeleteRoom;

@end

@interface Context : NSObject

@property (nonatomic) State *state;
@property (nonatomic, weak) id<ContextDelegate> delegate;

#pragma mark - Singleton Implementation
+ (Context *)sharedInstance;
- (id)init UNAVAILABLE_ATTRIBUTE;

- (BOOL)createRoom;
- (BOOL)joinRoom;
- (BOOL)exitRoom;
- (BOOL)deleteRoom;

- (void)changeState:(State *)state;

@end
