//
//  AppDelegate.m
//  TrackMix
//
//  Created by Jessica Rudder on 10/11/15.
//  Copyright (c) 2015 Jessica Rudder. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

#import "Track.h"
@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];
    [self updateUserInterface];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
}

- (void)updateUserInterface {
    
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
