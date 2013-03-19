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

#import "AutoScalingActivity.h"


@implementation AutoScalingActivity

@synthesize activityId;
@synthesize autoScalingGroupName;
@synthesize descriptionValue;
@synthesize cause;
@synthesize startTime;
@synthesize endTime;
@synthesize statusCode;
@synthesize statusMessage;
@synthesize progress;
@synthesize details;


-(id)init
{
    if (self = [super init]) {
        activityId           = nil;
        autoScalingGroupName = nil;
        descriptionValue     = nil;
        cause                = nil;
        startTime            = nil;
        endTime              = nil;
        statusCode           = nil;
        statusMessage        = nil;
        progress             = nil;
        details              = nil;
    }

    return self;
}



-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ActivityId: %@,", activityId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AutoScalingGroupName: %@,", autoScalingGroupName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Description: %@,", descriptionValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Cause: %@,", cause]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StartTime: %@,", startTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EndTime: %@,", endTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StatusCode: %@,", statusCode]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StatusMessage: %@,", statusMessage]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Progress: %@,", progress]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Details: %@,", details]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}





@end
