//
//  PianoAnalytics-Swift.h
//  PianoAnalytics
//
//  Created by Adrien MUSSIO on 06/11/2024.
//

@import PianoAnalytics;

@interface PianoAnalytics : NSObject

// Method to get the shared instance of PianoAnalytics
+ (instancetype)sharedInstance;

// Method to send an event with a specified key
- (void)sendEventWithKey:(NSString *)key;

@end
