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

#import "EC2InstanceAttribute.h"


@implementation EC2InstanceAttribute

@synthesize instanceId;
@synthesize instanceType;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize userData;
@synthesize disableApiTermination;
@synthesize disableApiTerminationIsSet;
@synthesize instanceInitiatedShutdownBehavior;
@synthesize rootDeviceName;
@synthesize blockDeviceMappings;
@synthesize productCodes;
@synthesize ebsOptimized;
@synthesize ebsOptimizedIsSet;


- (id)init {
    if (self = [super init]) {
        instanceId = nil;
        instanceType = nil;
        kernelId = nil;
        ramdiskId = nil;
        userData = nil;
        disableApiTermination = NO;
        disableApiTerminationIsSet = NO;
        instanceInitiatedShutdownBehavior = nil;
        rootDeviceName = nil;
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
        productCodes = [[NSMutableArray alloc] initWithCapacity:1];
        ebsOptimized = NO;
        ebsOptimizedIsSet = NO;
    }

    return self;
}


- (void)addBlockDeviceMapping:(EC2InstanceBlockDeviceMapping *)blockDeviceMappingObject {
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMappingObject];
}

- (void)addProductCode:(EC2ProductCode *)productCodeObject {
    if (productCodes == nil) {
        productCodes = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [productCodes addObject:productCodeObject];
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceId: %@,", instanceId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"UserData: %@,", userData]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DisableApiTermination: %d,", disableApiTermination]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceInitiatedShutdownBehavior: %@,", instanceInitiatedShutdownBehavior]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RootDeviceName: %@,", rootDeviceName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ProductCodes: %@,", productCodes]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EbsOptimized: %d,", ebsOptimized]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
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
