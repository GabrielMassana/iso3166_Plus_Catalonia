//
//  ViewController.m
//  ISO-3166
//
//  Created by Gabriel Massana on 29/05/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// https://github.com/lukes/ISO-3166-Countries-with-Regional-Codes/blob/master/all/all.json

- (void)viewDidLoad
{
    [super viewDidLoad];


//    NSString *urlAsString = @"https://raw.githubusercontent.com/lukes/ISO-3166-Countries-with-Regional-Codes/master/all/all.json";
//    NSURL *url = [[NSURL alloc] initWithString:urlAsString];
//    NSLog(@"%@", urlAsString);
//    
//    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
//        
//        if (error)
//        {
//            
//        }
//        else
//        {
//            NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//            NSLog(@"array %@", array);
//            
//            for (NSDictionary *country in array)
//            {
//                NSLog(@"%@", [country objectForKey:@"name"]);
//            }
//            
//            NSLog(@"array count %d", [array count]);
//
//        }
//    }];
    
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"allCountries" ofType:@"json" ];
    
    NSData *data = [[NSFileManager defaultManager] contentsAtPath:filePath];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSLog(@"array %@", array);
    
    for (NSDictionary *country in array)
    {
        NSLog(@"%@", [country objectForKey:@"name"]);
    }
    
    NSLog(@"array count %d", [array count]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
