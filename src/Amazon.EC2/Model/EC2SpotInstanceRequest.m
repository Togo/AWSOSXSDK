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

#import "EC2SpotInstanceRequest.h"


@implementation EC2SpotInstanceRequest

@synthesize spotInstanceRequestId;
@synthesize spotPrice;
@synthesize type;
@synthesize state;
@synthesize fault;
@synthesize status;
@synthesize validFrom;
@synthesize validUntil;
@synthesize launchGroup;
@synthesize availabilityZoneGroup;
@synthesize launchSpecification;
@synthesize instanceId;
@synthesize createTime;
@synthesize productDescription;
@synthesize tags;
@synthesize launchedAvailabilityZone;


- (id)init {
    if (self = [super init]) {
        spotInstanceRequestId = nil;
        spotPrice = nil;
        type = nil;
        state = nil;
        fault = nil;
        status = nil;
        validFrom = nil;
        validUntil = nil;
        launchGroup = nil;
        availabilityZoneGroup = nil;
        launchSpecification = nil;
        instanceId = nil;
        createTime = nil;
        productDescription = nil;
        tags = [[NSMutableArray alloc] initWithCapacity:1];
        launchedAvailabilityZone = nil;
    }

    return self;
}


- (void)addTag:(EC2Tag *)tagObject {
    if (tags == nil) {
        tags = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [tags addObject:tagObject];
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SpotInstanceRequestId: %@,", spotInstanceRequestId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SpotPrice: %@,", spotPrice]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Type: %@,", type]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"State: %@,", state]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Fault: %@,", fault]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Status: %@,", status]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ValidFrom: %@,", validFrom]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ValidUntil: %@,", validUntil]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchGroup: %@,", launchGroup]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AvailabilityZoneGroup: %@,", availabilityZoneGroup]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchSpecification: %@,", launchSpecification]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceId: %@,", instanceId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"CreateTime: %@,", createTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ProductDescription: %@,", productDescription]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Tags: %@,", tags]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchedAvailabilityZone: %@,", launchedAvailabilityZone]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


@end
