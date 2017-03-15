//
//  TGViewController.m
//  TouchableSlider
//
//  Created by Tanguy G on 03/15/2017.
//  Copyright (c) 2017 Tanguy G. All rights reserved.
//

#import "TGViewController.h"

@interface TGViewController ()

@property (weak, nonatomic) IBOutlet UISlider *slider; // TouchableSlider : UISlider
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TGViewController

- (IBAction)sliderValueChanged:(UISlider *)sender {
    self.label.text = @(sender.value).stringValue;
}

@end
