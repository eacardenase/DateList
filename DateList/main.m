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
        
//        NSMutableArray *dateList = [[NSMutableArray alloc] init];
//        NSMutableArray *dateList = [NSMutableArray array];
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
//        [dateList addObject:now];
//        [dateList addObject:tomorrow];
        
//        [dateList insertObject:yesterday atIndex:0];
        
//        NSLog(@"The first date is %@", dateList[0]);
//        NSLog(@"The third date is %@", dateList[2]);
//        NSLog(@"The fourth date is %@", dateList[3]); // out-of-range error
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        NSInteger dateCount = [dateList count];
        
        NSLog(@"How many items are inside dateList? There are %lu dates", dateCount);
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is another date: %@", d);
        }
        
//        NSLog(@"Removing an item...");
//        [dateList removeObjectAtIndex:0];
        
        NSLog(@"Now the first date is: %@", dateList[0]);
    }
    return 0;
}
