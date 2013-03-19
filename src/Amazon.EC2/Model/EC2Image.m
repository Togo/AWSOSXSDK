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

#import "EC2Image.h"


@implementation EC2Image

@synthesize imageId;
@synthesize imageLocation;
@synthesize state;
@synthesize ownerId;
@synthesize publicValue;
@synthesize publicValueIsSet;
@synthesize productCodes;
@synthesize architecture;
@synthesize imageType;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize platform;
@synthesize stateReason;
@synthesize imageOwnerAlias;
@synthesize name;
@synthesize descriptionValue;
@synthesize rootDeviceType;
@synthesize rootDeviceName;
@synthesize blockDeviceMappings;
@synthesize virtualizationType;
@synthesize tags;
@synthesize hypervisor;


-(id)init
{
    if (self = [super init]) {
        imageId             = nil;
        imageLocation       = nil;
        state               = nil;
        ownerId             = nil;
        publicValue         = NO;
        publicValueIsSet    = NO;
        productCodes        = [[NSMutableArray alloc] initWithCapacity:1];
        architecture        = nil;
        imageType           = nil;
        kernelId            = nil;
        ramdiskId           = nil;
        platform            = nil;
        stateReason         = nil;
        imageOwnerAlias     = nil;
        name                = nil;
        descriptionValue    = nil;
        rootDeviceType      = nil;
        rootDeviceName      = nil;
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
        virtualizationType  = nil;
        tags                = [[NSMutableArray alloc] initWithCapacity:1];
        hypervisor          = nil;
    }

    return self;
}


-(void)addProductCode:(EC2ProductCode *)productCodeObject
{
    if (productCodes == nil) {
        productCodes = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [productCodes addObject:productCodeObject];
}

-(void)addBlockDeviceMapping:(EC2BlockDeviceMapping *)blockDeviceMappingObject
{
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMappingObject];
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
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageId: %@,", imageId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageLocation: %@,", imageLocation]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"State: %@,", state]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"OwnerId: %@,", ownerId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Public: %d,", publicValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ProductCodes: %@,", productCodes]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Architecture: %@,", architecture]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageType: %@,", imageType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Platform: %@,", platform]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StateReason: %@,", stateReason]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageOwnerAlias: %@,", imageOwnerAlias]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Name: %@,", name]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Description: %@,", descriptionValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RootDeviceType: %@,", rootDeviceType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RootDeviceName: %@,", rootDeviceName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"VirtualizationType: %@,", virtualizationType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Tags: %@,", tags]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Hypervisor: %@,", hypervisor]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


-(void)setPublicValue:(bool)theValue
{
    publicValue      = theValue;
    publicValueIsSet = YES;
}




@end
