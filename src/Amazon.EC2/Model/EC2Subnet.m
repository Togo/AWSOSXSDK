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

#import "EC2Subnet.h"


@implementation EC2Subnet

@synthesize subnetId;
@synthesize state;
@synthesize vpcId;
@synthesize cidrBlock;
@synthesize availableIpAddressCount;
@synthesize availabilityZone;
@synthesize defaultForAz;
@synthesize defaultForAzIsSet;
@synthesize mapPublicIpOnLaunch;
@synthesize mapPublicIpOnLaunchIsSet;
@synthesize tags;


-(id)init
{
    if (self = [super init]) {
        subnetId                 = nil;
        state                    = nil;
        vpcId                    = nil;
        cidrBlock                = nil;
        availableIpAddressCount  = nil;
        availabilityZone         = nil;
        defaultForAz             = NO;
        defaultForAzIsSet        = NO;
        mapPublicIpOnLaunch      = NO;
        mapPublicIpOnLaunchIsSet = NO;
        tags                     = [[NSMutableArray alloc] initWithCapacity:1];
    }

    return self;
}


-(void)addTag:(EC2Tag *)tagObject
{
    if (tags == nil) {
        tags = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [tags addObject:tagObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SubnetId: %@,", subnetId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"State: %@,", state]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"VpcId: %@,", vpcId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"CidrBlock: %@,", cidrBlock]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AvailableIpAddressCount: %@,", availableIpAddressCount]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AvailabilityZone: %@,", availabilityZone]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DefaultForAz: %d,", defaultForAz]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"MapPublicIpOnLaunch: %d,", mapPublicIpOnLaunch]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Tags: %@,", tags]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


-(void)setDefaultForAz:(bool)theValue
{
    defaultForAz      = theValue;
    defaultForAzIsSet = YES;
}

-(void)setMapPublicIpOnLaunch:(bool)theValue
{
    mapPublicIpOnLaunch      = theValue;
    mapPublicIpOnLaunchIsSet = YES;
}




@end
