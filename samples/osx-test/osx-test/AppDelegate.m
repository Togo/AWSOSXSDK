//
//  AppDelegate.m
//  osx-test
//
//  Created by Hiroshi Horie on 2013/03/20.
//  Copyright (c) 2013年 Mobiq, Inc. All rights reserved.
//

#import "AppDelegate.h"

#import <AWSOSXSDK/S3/AmazonS3Client.h>
#import <AWSOSXSDK/AmazonEndpoints.h>

@implementation AppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    // Initial the S3 Client.
    AmazonS3Client *s3 = [[AmazonS3Client alloc] initWithAccessKey:@""
                                                      withSecretKey:@""];
    s3.endpoint = [AmazonEndpoints s3Endpoint:AP_NORTHEAST_1];

    S3CreateBucketRequest *createBucketRequest = [[S3CreateBucketRequest alloc] initWithName:@"warotahahahah"
                                                                                    andRegion:[S3Region APJapan]];
    S3CreateBucketResponse *createBucketResponse = [s3 createBucket:createBucketRequest];
    if(createBucketResponse.error != nil)
    {
        NSLog(@"Error: %@", createBucketResponse.error);
    }

}

@end
