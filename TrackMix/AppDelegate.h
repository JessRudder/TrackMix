//
//  AppDelegate.h
//  TrackMix
//
//  Created by Jessica Rudder on 10/11/15.
//  Copyright (c) 2015 Jessica Rudder. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Track;
@interface AppDelegate : NSObject <NSApplicationDelegate>


@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (void)updateUserInterface;

@end

