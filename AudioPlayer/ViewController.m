//
//  ViewController.m
//  AudioPlayer
//
//  Created by apple on 2017/2/10.
//  Copyright © 2017年 xiaokai.zhan. All rights reserved.
//

#import "ViewController.h"
#import "CommonUtil.h"
#import "AudioPlayer.h"
#import "AudioRecorder.h"

@implementation ViewController
{
    AudioPlayer*            _audioPlayer;
    AudioRecorder*          _recorder;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)record:(id)sender {
    NSString* recordFilePath = [CommonUtil documentsPath:@"recorder.caf"];
    _recorder = [[AudioRecorder alloc] initWithPath:recordFilePath];
    [_recorder start];
}

- (IBAction)play:(id)sender {
    NSLog(@"Play Music...");
    //    NSString* filePath = [CommonUtil bundlePath:@"131.aac"];
    NSString* filePath = [CommonUtil bundlePath:@"111.aac"];
    _audioPlayer = [[AudioPlayer alloc] initWithFilePath:filePath];
    [_audioPlayer start];
}

- (IBAction)stop:(id)sender {
    NSLog(@"Stop Music...");
    if(_audioPlayer) {
        [_audioPlayer stop];
    }
    if(_recorder) {
        [_recorder stop];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
