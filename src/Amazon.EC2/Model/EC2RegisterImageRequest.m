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

#import "EC2RegisterImageRequest.h"


@implementation EC2RegisterImageRequest

@synthesize imageLocation;
@synthesize name;
@synthesize descriptionValue;
@synthesize architecture;
@synthesize kernelId;
@synthesize ramdiskId;
@synthesize rootDeviceName;
@synthesize blockDeviceMappings;


- (id)init {
    if (self = [super init]) {
        imageLocation = nil;
        name = nil;
        descriptionValue = nil;
        architecture = nil;
        kernelId = nil;
        ramdiskId = nil;
        rootDeviceName = nil;
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    return self;
}

- (id)initWithImageLocation:(NSString *)theImageLocation {
    if (self = [self init]) {
        self.imageLocation = theImageLocation;
    }

    return self;
}


- (void)addBlockDeviceMapping:(EC2BlockDeviceMapping *)blockDeviceMappingObject {
    if (blockDeviceMappings == nil) {
        blockDeviceMappings = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [blockDeviceMappings addObject:blockDeviceMappingObject];
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ImageLocation: %@,", imageLocation]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Name: %@,", name]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Description: %@,", descriptionValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Architecture: %@,", architecture]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"KernelId: %@,", kernelId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RamdiskId: %@,", ramdiskId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RootDeviceName: %@,", rootDeviceName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"BlockDeviceMappings: %@,", blockDeviceMappings]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


@end
