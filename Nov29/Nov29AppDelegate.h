//
//  Nov29AppDelegate.h
//  Nov29
//
//  Created by Erica Lederman on 11/28/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
@class View;

@interface Nov29AppDelegate: UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate> {
	AVAudioPlayer *player;
	View *view;
	UIWindow *_window;
}

- (void) valueChanged: (id) sender;
- (void) valueChanged2: (id) sender;
- (void) valueChanged3: (id) sender;
- (void) touchUpInside: (id) sender;

@property (strong, nonatomic) UIWindow *window;
@end
