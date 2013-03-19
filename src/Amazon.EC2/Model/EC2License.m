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

#import "EC2License.h"


@implementation EC2License

@synthesize licenseId;
@synthesize type;
@synthesize pool;
@synthesize capacities;
@synthesize tags;


-(id)init
{
    if (self = [super init]) {
        licenseId  = nil;
        type       = nil;
        pool       = nil;
        capacities = [[NSMutableArray alloc] initWithCapacity:1];
        tags       = [[NSMutableArray alloc] initWithCapacity:1];
    }

    return self;
}


-(void)addCapacity:(EC2LicenseCapacity *)capacityObject
{
    if (capacities == nil) {
        capacities = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [capacities addObject:capacityObject];
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
    [buffer appendString:[[NSString alloc] initWithFormat:@"LicenseId: %@,", licenseId]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Type: %@,", type]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Pool: %@,", pool]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Capacities: %@,", capacities]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Tags: %@,", tags]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}





@end
