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

#import "EC2ModifyInstanceAttributeRequest.h"


@implementation EC2ModifyInstanceAttributeRequest

@synthesize instanceId;
@synthesize attribute;
@synthesize value;
@synthesize blockDeviceMappings;
@synthesize sourceDestCheck;
@synthesize sourceDestCheckIsSet;
@synthesize disableApiTermination;
@synthesize disableApiTerminationIsSet;
@synthesize instanceType;
@synthesize kernel;
@synthesize ramdisk;
@synthesize userData;
@synthesize instanceInitiatedShutdownBehavior;
@synthesize groups;
@synthesize ebsOptimized;
@synthesize ebsOptimizedIsSet;


-(id)init
{
    if (self = [super init]) {
        instanceId                        = nil;
        attribute                         = nil;
        value                             = nil;
        blockDeviceMappings               = [[NSMutableArray alloc] initWithCapacity:1];
        sourceDestCheck                   = NO;
        sourceDestCheckIsSet              = NO;
        disableApiTermination             = NO;
        disableApiTerminationIsSet        = NO;
        instanceType                      = nil;
        kernel                            = nil;
        ramdisk                           = nil;
        userData                          = nil;
        instanceInitiatedShutdownBehavior = nil;
        groups                            = [[NSMutableArray alloc] initWithCapacity:1];
        ebsOptimized                      = NO;
        ebsOptimizedIsSet                 = NO;
    }

    return self;
}

-(id)initWithInstanceId:(NSString *)theInstanceId andAttribute:(NSString *)theAttribute
{
    if (self = [self init]) {
        self.instanceId = theInstanceId;
        self.attribute  = theAttribute;
    }

    return self;
}


-(void)addBlockDeviceMapping:(EC2InstanceBlockDeviceMappingSpecification *)blockDeviceMappingObject
{
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMappingObject];
}

-(void)addGroup:(NSString *)groupObject
{
    if (groups == nil) {
        groups = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [groups addObject:groupObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceId: %@,", instanceId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Attribute: %@,", attribute]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Value: %@,", value]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SourceDestCheck: %d,", sourceDestCheck]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DisableApiTermination: %d,", disableApiTermination]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Kernel: %@,", kernel]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Ramdisk: %@,", ramdisk]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"UserData: %@,", userData]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InstanceInitiatedShutdownBehavior: %@,", instanceInitiatedShutdownBehavior]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Groups: %@,", groups]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EbsOptimized: %d,", ebsOptimized]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


-(void)setSourceDestCheck:(bool)theValue
{
    sourceDestCheck      = theValue;
    sourceDestCheckIsSet = YES;
}

-(void)setDisableApiTermination:(bool)theValue
{
    disableApiTermination      = theValue;
    disableApiTerminationIsSet = YES;
}

-(void)setEbsOptimized:(bool)theValue
{
    ebsOptimized      = theValue;
    ebsOptimizedIsSet = YES;
}




@end
