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

#import "EC2Instance.h"


@implementation EC2Instance

@synthesize instanceId;
@synthesize imageId;
@synthesize state;
@synthesize privateDnsName;
@synthesize publicDnsName;
@synthesize stateTransitionReason;
@synthesize keyName;
@synthesize amiLaunchIndex;
@synthesize productCodes;
@synthesize instanceType;
@synthesize launchTime;
@synthesize placement;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize platform;
@synthesize monitoring;
@synthesize subnetId;
@synthesize vpcId;
@synthesize privateIpAddress;
@synthesize publicIpAddress;
@synthesize stateReason;
@synthesize architecture;
@synthesize rootDeviceType;
@synthesize rootDeviceName;
@synthesize blockDeviceMappings;
@synthesize virtualizationType;
@synthesize instanceLifecycle;
@synthesize spotInstanceRequestId;
@synthesize license;
@synthesize clientToken;
@synthesize tags;
@synthesize securityGroups;
@synthesize sourceDestCheck;
@synthesize sourceDestCheckIsSet;
@synthesize hypervisor;
@synthesize networkInterfaces;
@synthesize iamInstanceProfile;
@synthesize ebsOptimized;
@synthesize ebsOptimizedIsSet;


- (id)init {
    if (self = [super init]) {
        instanceId = nil;
        imageId = nil;
        state = nil;
        privateDnsName = nil;
        publicDnsName = nil;
        stateTransitionReason = nil;
        keyName = nil;
        amiLaunchIndex = nil;
        productCodes = [[NSMutableArray alloc] initWithCapacity:1];
        instanceType = nil;
        launchTime = nil;
        placement = nil;
        kernelId = nil;
        ramdiskId = nil;
        platform = nil;
        monitoring = nil;
        subnetId = nil;
        vpcId = nil;
        privateIpAddress = nil;
        publicIpAddress = nil;
        stateReason = nil;
        architecture = nil;
        rootDeviceType = nil;
        rootDeviceName = nil;
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
        virtualizationType = nil;
        instanceLifecycle = nil;
        spotInstanceRequestId = nil;
        license = nil;
        clientToken = nil;
        tags = [[NSMutableArray alloc] initWithCapacity:1];
        securityGroups = [[NSMutableArray alloc] initWithCapacity:1];
        sourceDestCheck = NO;
        sourceDestCheckIsSet = NO;
        hypervisor = nil;
        networkInterfaces = [[NSMutableArray alloc] initWithCapacity:1];
        iamInstanceProfile = nil;
        ebsOptimized = NO;
        ebsOptimizedIsSet = NO;
    }

    return self;
}


- (void)addProductCode:(EC2ProductCode *)productCodeObject {
    if (productCodes == nil) {
        productCodes = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [productCodes addObject:productCodeObject];
}

- (void)addBlockDeviceMapping:(EC2InstanceBlockDeviceMapping *)blockDeviceMappingObject {
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMappingObject];
}

- (void)addTag:(EC2Tag *)tagObject {
    if (tags == nil) {
        tags = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [tags addObject:tagObject];
}

- (void)addSecurityGroup:(EC2GroupIdentifier *)securityGroupObject {
    if (securityGroups == nil) {
        securityGroups = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [securityGroups addObject:securityGroupObject];
}

- (void)addNetworkInterface:(EC2InstanceNetworkInterface *)networkInterfaceObject {
    if (networkInterfaces == nil) {
        networkInterfaces = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [networkInterfaces addObject:networkInterfaceObject];
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceId: %@,", instanceId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageId: %@,", imageId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"State: %@,", state]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"PrivateDnsName: %@,", privateDnsName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"PublicDnsName: %@,", publicDnsName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StateTransitionReason: %@,", stateTransitionReason]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KeyName: %@,", keyName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AmiLaunchIndex: %@,", amiLaunchIndex]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ProductCodes: %@,", productCodes]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchTime: %@,", launchTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Placement: %@,", placement]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Platform: %@,", platform]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Monitoring: %@,", monitoring]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SubnetId: %@,", subnetId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"VpcId: %@,", vpcId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"PrivateIpAddress: %@,", privateIpAddress]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"PublicIpAddress: %@,", publicIpAddress]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StateReason: %@,", stateReason]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Architecture: %@,", architecture]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RootDeviceType: %@,", rootDeviceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RootDeviceName: %@,", rootDeviceName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"VirtualizationType: %@,", virtualizationType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceLifecycle: %@,", instanceLifecycle]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SpotInstanceRequestId: %@,", spotInstanceRequestId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"License: %@,", license]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ClientToken: %@,", clientToken]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Tags: %@,", tags]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SecurityGroups: %@,", securityGroups]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SourceDestCheck: %d,", sourceDestCheck]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Hypervisor: %@,", hypervisor]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"NetworkInterfaces: %@,", networkInterfaces]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"IamInstanceProfile: %@,", iamInstanceProfile]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EbsOptimized: %d,", ebsOptimized]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


- (void)setSourceDestCheck:(bool)theValue {
    sourceDestCheck = theValue;
    sourceDestCheckIsSet = YES;
}

- (void)setEbsOptimized:(bool)theValue {
    ebsOptimized = theValue;
    ebsOptimizedIsSet = YES;
}


@end
