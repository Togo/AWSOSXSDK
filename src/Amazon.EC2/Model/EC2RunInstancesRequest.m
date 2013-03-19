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

#import "EC2RunInstancesRequest.h"


@implementation EC2RunInstancesRequest

@synthesize imageId;
@synthesize minCount;
@synthesize maxCount;
@synthesize keyName;
@synthesize securityGroups;
@synthesize securityGroupIds;
@synthesize userData;
@synthesize instanceType;
@synthesize placement;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize blockDeviceMappings;
@synthesize monitoring;
@synthesize monitoringIsSet;
@synthesize subnetId;
@synthesize disableApiTermination;
@synthesize disableApiTerminationIsSet;
@synthesize instanceInitiatedShutdownBehavior;
@synthesize license;
@synthesize privateIpAddress;
@synthesize clientToken;
@synthesize additionalInfo;
@synthesize networkInterfaces;
@synthesize iamInstanceProfile;
@synthesize ebsOptimized;
@synthesize ebsOptimizedIsSet;


- (id)init {
    if (self = [super init]) {
        imageId = nil;
        minCount = nil;
        maxCount = nil;
        keyName = nil;
        securityGroups = [[NSMutableArray alloc] initWithCapacity:1];
        securityGroupIds = [[NSMutableArray alloc] initWithCapacity:1];
        userData = nil;
        instanceType = nil;
        placement = nil;
        kernelId = nil;
        ramdiskId = nil;
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
        monitoring = NO;
        monitoringIsSet = NO;
        subnetId = nil;
        disableApiTermination = NO;
        disableApiTerminationIsSet = NO;
        instanceInitiatedShutdownBehavior = nil;
        license = nil;
        privateIpAddress = nil;
        clientToken = nil;
        additionalInfo = nil;
        networkInterfaces = [[NSMutableArray alloc] initWithCapacity:1];
        iamInstanceProfile = nil;
        ebsOptimized = NO;
        ebsOptimizedIsSet = NO;
    }

    return self;
}

- (id)initWithImageId:(NSString *)theImageId andMinCount:(NSNumber *)theMinCount andMaxCount:(NSNumber *)theMaxCount {
    if (self = [self init]) {
        self.imageId = theImageId;
        self.minCount = theMinCount;
        self.maxCount = theMaxCount;
    }

    return self;
}


- (void)addSecurityGroup:(NSString *)securityGroupObject {
    if (securityGroups == nil) {
        securityGroups = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [securityGroups addObject:securityGroupObject];
}

- (void)addSecurityGroupId:(NSString *)securityGroupIdObject {
    if (securityGroupIds == nil) {
        securityGroupIds = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [securityGroupIds addObject:securityGroupIdObject];
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
    [buffer appendString:[[NSString alloc] initWithFormat:@"MinCount: %@,", minCount]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"MaxCount: %@,", maxCount]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KeyName: %@,", keyName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SecurityGroups: %@,", securityGroups]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SecurityGroupIds: %@,", securityGroupIds]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"UserData: %@,", userData]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Placement: %@,", placement]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Monitoring: %d,", monitoring]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SubnetId: %@,", subnetId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DisableApiTermination: %d,", disableApiTermination]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceInitiatedShutdownBehavior: %@,", instanceInitiatedShutdownBehavior]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"License: %@,", license]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"PrivateIpAddress: %@,", privateIpAddress]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ClientToken: %@,", clientToken]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AdditionalInfo: %@,", additionalInfo]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"NetworkInterfaces: %@,", networkInterfaces]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"IamInstanceProfile: %@,", iamInstanceProfile]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EbsOptimized: %d,", ebsOptimized]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


- (void)setMonitoring:(bool)theValue {
    monitoring = theValue;
    monitoringIsSet = YES;
}

- (void)setDisableApiTermination:(bool)theValue {
    disableApiTermination = theValue;
    disableApiTerminationIsSet = YES;
}

- (void)setEbsOptimized:(bool)theValue {
    ebsOptimized = theValue;
    ebsOptimizedIsSet = YES;
}


@end
