//
//  ViewController.m
//  StatePattern_OperationSample
//
//  Created by ms-inaba on 2016/06/10.
//  Copyright © 2016年 ms-inaba. All rights reserved.
//

#import "ViewController.h"
#import "Context.h"

@interface ViewController ()
<
ContextDelegate
>
@property (weak, nonatomic) IBOutlet UITextView *logTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     以下3つの状態が存在する
     部屋が存在しない状態 = NonExistRoom
     部屋が存在する状態 = ExistRoom
     チャットしている状態 = Chatting
     */
    
    [Context sharedInstance].delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)createButton:(id)sender {
    
    BOOL resurt = [[Context sharedInstance] createRoom];
    if (!resurt) {
        dispatch_async(dispatch_get_main_queue(),^{
            self.logTextView.text = @"エラー";
        });
    }
}

- (void)onCreateRoom {
    
    dispatch_async(dispatch_get_main_queue(),^{
        self.logTextView.text = @"部屋が作成されました。";
    });
}

- (IBAction)joinButton:(id)sender {

    BOOL resurt = [[Context sharedInstance] joinRoom];
    if (!resurt) {
        dispatch_async(dispatch_get_main_queue(),^{
            self.logTextView.text = @"エラー";
        });
    }
}

- (void)onJoinRoom {
    
    dispatch_async(dispatch_get_main_queue(),^{
        self.logTextView.text = @"部屋に入室しました。";
    });
}

- (IBAction)exitButton:(id)sender {
    
    BOOL resurt = [[Context sharedInstance] exitRoom];
    if (!resurt) {
        dispatch_async(dispatch_get_main_queue(),^{
            self.logTextView.text = @"エラー";
        });
    }
}

- (void)onExitRoom {
    
    dispatch_async(dispatch_get_main_queue(),^{
        self.logTextView.text = @"部屋から退出しました。";
    });
}

- (IBAction)deleteButton:(id)sender {
    
    BOOL resurt = [[Context sharedInstance] deleteRoom];
    if (!resurt) {
        dispatch_async(dispatch_get_main_queue(),^{
            self.logTextView.text = @"エラー";
        });
    }
}

- (void)onDeleteRoom {
    
    dispatch_async(dispatch_get_main_queue(),^{
        self.logTextView.text = @"部屋を削除しました。";
    });
}

@end
