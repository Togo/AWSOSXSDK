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

#import "EC2LaunchSpecification.h"


@implementation EC2LaunchSpecification

@synthesize imageId;
@synthesize keyName;
@synthesize allSecurityGroups;
@synthesize securityGroups;
@synthesize userData;
@synthesize addressingType;
@synthesize instanceType;
@synthesize placement;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize blockDeviceMappings;
@synthesize monitoringEnabled;
@synthesize monitoringEnabledIsSet;
@synthesize subnetId;
@synthesize networkInterfaces;
@synthesize iamInstanceProfile;
@synthesize ebsOptimized;
@synthesize ebsOptimizedIsSet;


- (id)init {
    if (self = [super init]) {
        imageId = nil;
        keyName = nil;
        allSecurityGroups = [[NSMutableArray alloc] initWithCapacity:1];
        securityGroups = [[NSMutableArray alloc] initWithCapacity:1];
        userData = nil;
        addressingType = nil;
        instanceType = nil;
        placement = nil;
        kernelId = nil;
        ramdiskId = nil;
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
        monitoringEnabled = NO;
        monitoringEnabledIsSet = NO;
        subnetId = nil;
        networkInterfaces = [[NSMutableArray alloc] initWithCapacity:1];
        iamInstanceProfile = nil;
        ebsOptimized = NO;
        ebsOptimizedIsSet = NO;
    }

    return self;
}


- (void)addAllSecurityGroup:(EC2GroupIdentifier *)allSecurityGroupObject {
    if (allSecurityGroups == nil) {
        allSecurityGroups = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [allSecurityGroups addObject:allSecurityGroupObject];
}

- (void)addSecurityGroup:(NSString *)securityGroupObject {
    if (securityGroups == nil) {
        securityGroups = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [securityGroups addObject:securityGroupObject];
}

- (void)addBlockDeviceMapping:(EC2BlockDeviceMapping *)blockDeviceMappingObject {
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMappingObject];
}

- (void)addNetworkInterface:(EC2InstanceNetworkInterfaceSpecification *)networkInterfaceObject {
    if (networkInterfaces == nil) {
        networkInterfaces = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [networkInterfaces addObject:networkInterfaceObject];
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageId: %@,", imageId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KeyName: %@,", keyName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AllSecurityGroups: %@,", allSecurityGroups]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SecurityGroups: %@,", securityGroups]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"UserData: %@,", userData]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AddressingType: %@,", addressingType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Placement: %@,", placement]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"MonitoringEnabled: %d,", monitoringEnabled]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SubnetId: %@,", subnetId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"NetworkInterfaces: %@,", networkInterfaces]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"IamInstanceProfile: %@,", iamInstanceProfile]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EbsOptimized: %d,", ebsOptimized]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


- (void)setMonitoringEnabled:(bool)theValue {
    monitoringEnabled = theValue;
    monitoringEnabledIsSet = YES;
}

- (void)setEbsOptimized:(bool)theValue {
    ebsOptimized = theValue;
    ebsOptimizedIsSet = YES;
}


@end
