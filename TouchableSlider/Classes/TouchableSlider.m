//
//  TouchableSlider.m
//
//  Created by Tanguy G on 24/11/2015.
//

#import "TouchableSlider.h"

@implementation TouchableSlider

#pragma mark - UIControl

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    [super beginTrackingWithTouch:touch withEvent:event];
    
    [self updateSliderPositionWithTouch:touch];
    [super sendActionsForControlEvents:UIControlEventValueChanged];
    return YES;
}

- (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(nullable UIEvent *)event {
    [super continueTrackingWithTouch:touch withEvent:event];
    
    [self updateSliderPositionWithTouch:touch];
    [super sendActionsForControlEvents:UIControlEventValueChanged];
    return YES;
}

- (void)endTrackingWithTouch:(nullable UITouch *)touch withEvent:(nullable UIEvent *)event {
    [super endTrackingWithTouch:touch withEvent:event];
    
    [self updateSliderPositionWithTouch:touch];
    [super sendActionsForControlEvents:UIControlEventValueChanged];
}

#pragma mark - Thumb position

- (void)updateSliderPositionWithTouch:(UITouch *)touch {
    CGPoint touchLocation = [touch locationInView:self];
    CGRect trackRect = [self trackRectForBounds:self.bounds];
    CGRect thumbRectForBounds = [self thumbRectForBounds:self.bounds trackRect:trackRect value:self.value];
    CGFloat thumbWidth = CGRectGetWidth(thumbRectForBounds);
    CGFloat value = self.minimumValue + (self.maximumValue - self.minimumValue) * ((touchLocation.x - thumbWidth / 2.0f) / (CGRectGetWidth(self.bounds) - thumbWidth));
    if (value < self.minimumValue) {
        value = self.minimumValue;
    } else if (value > self.maximumValue) {
        value = self.maximumValue;
    }
    [self setValue:value animated:YES];
}

@end
