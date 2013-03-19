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

#import "EC2ImportInstanceLaunchSpecification.h"


@implementation EC2ImportInstanceLaunchSpecification

@synthesize architecture;
@synthesize securityGroups;
@synthesize additionalInfo;
@synthesize userData;
@synthesize instanceType;
@synthesize placement;
@synthesize blockDeviceMappings;
@synthesize monitoring;
@synthesize monitoringIsSet;
@synthesize subnetId;
@synthesize disableApiTermination;
@synthesize disableApiTerminationIsSet;
@synthesize instanceInitiatedShutdownBehavior;
@synthesize privateIpAddress;


-(id)init
{
    if (self = [super init]) {
        architecture                      = nil;
        securityGroups                    = [[NSMutableArray alloc] initWithCapacity:1];
        additionalInfo                    = nil;
        userData                          = nil;
        instanceType                      = nil;
        placement                         = nil;
        blockDeviceMappings               = [[NSMutableArray alloc] initWithCapacity:1];
        monitoring                        = NO;
        monitoringIsSet                   = NO;
        subnetId                          = nil;
        disableApiTermination             = NO;
        disableApiTerminationIsSet        = NO;
        instanceInitiatedShutdownBehavior = nil;
        privateIpAddress                  = nil;
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

-(void)addBlockDeviceMapping:(EC2BlockDeviceMapping *)blockDeviceMappingObject
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
    [buffer appendString:[[NSString alloc] initWithFormat:@"Architecture: %@,", architecture]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SecurityGroups: %@,", securityGroups]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AdditionalInfo: %@,", additionalInfo]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"UserData: %@,", userData]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Placement: %@,", placement]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Monitoring: %d,", monitoring]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SubnetId: %@,", subnetId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DisableApiTermination: %d,", disableApiTermination]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceInitiatedShutdownBehavior: %@,", instanceInitiatedShutdownBehavior]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"PrivateIpAddress: %@,", privateIpAddress]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


-(void)setMonitoring:(bool)theValue
{
    monitoring      = theValue;
    monitoringIsSet = YES;
}

-(void)setDisableApiTermination:(bool)theValue
{
    disableApiTermination      = theValue;
    disableApiTerminationIsSet = YES;
}




@end
