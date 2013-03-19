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

#import "EC2RequestSpotInstancesRequest.h"


@implementation EC2RequestSpotInstancesRequest

@synthesize spotPrice;
@synthesize instanceCount;
@synthesize type;
@synthesize validFrom;
@synthesize validUntil;
@synthesize launchGroup;
@synthesize availabilityZoneGroup;
@synthesize launchSpecification;


-(id)init
{
    if (self = [super init]) {
        spotPrice             = nil;
        instanceCount         = nil;
        type                  = nil;
        validFrom             = nil;
        validUntil            = nil;
        launchGroup           = nil;
        availabilityZoneGroup = nil;
        launchSpecification   = nil;
    }

    return self;
}

-(id)initWithSpotPrice:(NSString *)theSpotPrice
{
    if (self = [self init]) {
        self.spotPrice = theSpotPrice;
    }

    return self;
}



-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SpotPrice: %@,", spotPrice]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceCount: %@,", instanceCount]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Type: %@,", type]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ValidFrom: %@,", validFrom]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ValidUntil: %@,", validUntil]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchGroup: %@,", launchGroup]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AvailabilityZoneGroup: %@,", availabilityZoneGroup]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchSpecification: %@,", launchSpecification]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}





@end
