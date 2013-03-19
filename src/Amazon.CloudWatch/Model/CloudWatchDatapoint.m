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

#import "CloudWatchDatapoint.h"


@implementation CloudWatchDatapoint

@synthesize timestamp;
@synthesize sampleCount;
@synthesize average;
@synthesize sum;
@synthesize minimum;
@synthesize maximum;
@synthesize unit;


-(id)init
{
    if (self = [super init]) {
        timestamp   = nil;
        sampleCount = nil;
        average     = nil;
        sum         = nil;
        minimum     = nil;
        maximum     = nil;
        unit        = nil;
    }

    return self;
}



-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Timestamp: %@,", timestamp]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SampleCount: %@,", sampleCount]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Average: %@,", average]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Sum: %@,", sum]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Minimum: %@,", minimum]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Maximum: %@,", maximum]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Unit: %@,", unit]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}





@end
