//
//  FISEventDetailViewController.m
//  tasksToday
//
//  Created by John Richardson on 6/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISEventDetailViewController.h"

@interface FISEventDetailViewController ()

@end

@implementation FISEventDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.eventsList.text = [self setTextForEvents:self.events];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSString *)setTextForEvents:(NSArray *)events {
    NSString *eventsList = @"";
    NSUInteger numberOfEvents = [events count];
    for(EKEvent *event in events) {
        if ([events indexOfObject:event] == numberOfEvents - 1) {
             eventsList = [eventsList stringByAppendingFormat:@"%@", event.title];
        } else {
            eventsList = [eventsList stringByAppendingFormat:@"%@\n", event.title];
        }
    }
    return eventsList;
}


@end
