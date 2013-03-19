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

#import "AutoScalingCreateLaunchConfigurationRequest.h"


@implementation AutoScalingCreateLaunchConfigurationRequest

@synthesize launchConfigurationName;
@synthesize imageId;
@synthesize keyName;
@synthesize securityGroups;
@synthesize userData;
@synthesize instanceType;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize blockDeviceMappings;
@synthesize instanceMonitoring;
@synthesize spotPrice;
@synthesize iamInstanceProfile;
@synthesize ebsOptimized;
@synthesize ebsOptimizedIsSet;


-(id)init
{
    if (self = [super init]) {
        launchConfigurationName = nil;
        imageId                 = nil;
        keyName                 = nil;
        securityGroups          = [[NSMutableArray alloc] initWithCapacity:1];
        userData                = nil;
        instanceType            = nil;
        kernelId                = nil;
        ramdiskId               = nil;
        blockDeviceMappings     = [[NSMutableArray alloc] initWithCapacity:1];
        instanceMonitoring      = nil;
        spotPrice               = nil;
        iamInstanceProfile      = nil;
        ebsOptimized            = NO;
        ebsOptimizedIsSet       = NO;
    }

    return self;
}


-(void)addSecurityGroup:(NSString *)securityGroupObject
{
    if (securityGroups == nil) {
        securityGroups = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [securityGroups addObject:securityGroupObject];
}

-(void)addBlockDeviceMapping:(AutoScalingBlockDeviceMapping *)blockDeviceMappingObject
{
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMappingObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LaunchConfigurationName: %@,", launchConfigurationName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageId: %@,", imageId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KeyName: %@,", keyName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SecurityGroups: %@,", securityGroups]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"UserData: %@,", userData]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceMonitoring: %@,", instanceMonitoring]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SpotPrice: %@,", spotPrice]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"IamInstanceProfile: %@,", iamInstanceProfile]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EbsOptimized: %d,", ebsOptimized]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


-(void)setEbsOptimized:(bool)theValue
{
    ebsOptimized      = theValue;
    ebsOptimizedIsSet = YES;
}




@end
