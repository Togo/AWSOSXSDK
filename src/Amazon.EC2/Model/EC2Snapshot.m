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

#import "EC2Snapshot.h"


@implementation EC2Snapshot

@synthesize snapshotId;
@synthesize volumeId;
@synthesize state;
@synthesize startTime;
@synthesize progress;
@synthesize ownerId;
@synthesize descriptionValue;
@synthesize volumeSize;
@synthesize ownerAlias;
@synthesize tags;


- (id)init {
    if (self = [super init]) {
        snapshotId = nil;
        volumeId = nil;
        state = nil;
        startTime = nil;
        progress = nil;
        ownerId = nil;
        descriptionValue = nil;
        volumeSize = nil;
        ownerAlias = nil;
        tags = [[NSMutableArray alloc] initWithCapacity:1];
    }

    return self;
}


- (void)addTag:(EC2Tag *)tagObject {
    if (tags == nil) {
        tags = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [tags addObject:tagObject];
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"SnapshotId: %@,", snapshotId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"VolumeId: %@,", volumeId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"State: %@,", state]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StartTime: %@,", startTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Progress: %@,", progress]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"OwnerId: %@,", ownerId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Description: %@,", descriptionValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"VolumeSize: %@,", volumeSize]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"OwnerAlias: %@,", ownerAlias]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Tags: %@,", tags]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


@end
