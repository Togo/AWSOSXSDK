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

#import "AutoScalingUpdateAutoScalingGroupRequest.h"


@implementation AutoScalingUpdateAutoScalingGroupRequest

@synthesize autoScalingGroupName;
@synthesize launchConfigurationName;
@synthesize minSize;
@synthesize maxSize;
@synthesize desiredCapacity;
@synthesize defaultCooldown;
@synthesize availabilityZones;
@synthesize healthCheckType;
@synthesize healthCheckGracePeriod;
@synthesize placementGroup;
@synthesize vPCZoneIdentifier;
@synthesize terminationPolicies;


- (id)init {
    if (self = [super init]) {
        autoScalingGroupName = nil;
        launchConfigurationName = nil;
        minSize = nil;
        maxSize = nil;
        desiredCapacity = nil;
        defaultCooldown = nil;
        availabilityZones = [[NSMutableArray alloc] initWithCapacity:1];
        healthCheckType = nil;
        healthCheckGracePeriod = nil;
        placementGroup = nil;
        vPCZoneIdentifier = nil;
        terminationPolicies = [[NSMutableArray alloc] initWithCapacity:1];
    }

    return self;
}


- (void)addAvailabilityZone:(NSString *)availabilityZoneObject {
    if (availabilityZones == nil) {
        availabilityZones = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [availabilityZones addObject:availabilityZoneObject];
}

- (void)addTerminationPolicy:(NSString *)terminationPolicyObject {
    if (terminationPolicies == nil) {
        terminationPolicies = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [terminationPolicies addObject:terminationPolicyObject];
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AutoScalingGroupName: %@,", autoScalingGroupName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchConfigurationName: %@,", launchConfigurationName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"MinSize: %@,", minSize]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"MaxSize: %@,", maxSize]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DesiredCapacity: %@,", desiredCapacity]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DefaultCooldown: %@,", defaultCooldown]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AvailabilityZones: %@,", availabilityZones]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"HealthCheckType: %@,", healthCheckType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"HealthCheckGracePeriod: %@,", healthCheckGracePeriod]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"PlacementGroup: %@,", placementGroup]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"VPCZoneIdentifier: %@,", vPCZoneIdentifier]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"TerminationPolicies: %@,", terminationPolicies]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


@end
