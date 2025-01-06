//
//  main.m
//  DateList
//
//  Created by Edwin Cardenas on 6/01/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
//        NSLog(@"The fourth date is %@", dateList[3]); // out-of-range error
        
        NSInteger dateCount = [dateList count];
        
        NSLog(@"How many items are inside dateList? There are %lu dates", dateCount);
        
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Here's a date: %@", d);
        }
    }
    return 0;
}
