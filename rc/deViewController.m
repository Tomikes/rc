//
//  deViewController.m
//  rc
//
//  Created by mike on 8/12/16.
//  Copyright © 2016 mike. All rights reserved.
//

#import "deViewController.h"
#import <mach/mach.h>
@interface deViewController ()

@end

@implementation deViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    @autoreleasepool {
        
        for (int i=0; i<100000; i++) {
            @autoreleasepool {
                
                UIView *per = [[UIView alloc] init];
                
                
                
            }
        
        }
    }
    
    
}
                        
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sde{
    
    @autoreleasepool {
       
        NSString *str = @"Hello World";
        str = [str stringByAppendingFormat:@" - %d", 2];
        str = [str uppercaseString];
        NSLog(@"%@",str);
        
    }
    
}


#pragma mark - Memory methods
//获取内存大小

double getMemoryUsage(void) {
    struct task_basic_info info;
    mach_msg_type_number_t size = sizeof(info);
    kern_return_t kerr = task_info(mach_task_self(), TASK_BASIC_INFO, (task_info_t)&info, &size);
    
    double memoryUsageInMB = kerr == KERN_SUCCESS ? (info.resident_size / 1024.0 / 1024.0) : 0.0;
    
    return memoryUsageInMB;
}

@end
