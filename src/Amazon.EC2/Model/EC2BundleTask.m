/*
 * Copyright 2010-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "EC2BundleTask.h"


@implementation EC2BundleTask

@synthesize instanceId;
@synthesize bundleId;
@synthesize state;
@synthesize startTime;
@synthesize updateTime;
@synthesize storage;
@synthesize progress;
@synthesize bundleTaskError;


- (id)init {
    if (self = [super init]) {
        instanceId = nil;
        bundleId = nil;
        state = nil;
        startTime = nil;
        updateTime = nil;
        storage = nil;
        progress = nil;
        bundleTaskError = nil;
    }

    return self;
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceId: %@,", instanceId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BundleId: %@,", bundleId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"State: %@,", state]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StartTime: %@,", startTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"UpdateTime: %@,", updateTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Storage: %@,", storage]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Progress: %@,", progress]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BundleTaskError: %@,", bundleTaskError]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


@end
