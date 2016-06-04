//
//  FISEventDetailViewController.h
//  tasksToday
//
//  Created by John Richardson on 6/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>

@interface FISEventDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *eventsList;
@property (nonatomic) NSArray *events;
@property (nonatomic) NSString *eventsText;

- (NSString *)setTextForEvents:(NSArray *)events;

@end
