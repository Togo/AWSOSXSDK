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

#import "DynamoDBProvisionedThroughputDescription.h"


@implementation DynamoDBProvisionedThroughputDescription

@synthesize lastIncreaseDateTime;
@synthesize lastDecreaseDateTime;
@synthesize numberOfDecreasesToday;
@synthesize readCapacityUnits;
@synthesize writeCapacityUnits;


- (id)init {
    if (self = [super init]) {
        lastIncreaseDateTime = nil;
        lastDecreaseDateTime = nil;
        numberOfDecreasesToday = nil;
        readCapacityUnits = nil;
        writeCapacityUnits = nil;
    }

    return self;
}


- (NSString *)description {
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LastIncreaseDateTime: %@,", lastIncreaseDateTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"LastDecreaseDateTime: %@,", lastDecreaseDateTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"NumberOfDecreasesToday: %@,", numberOfDecreasesToday]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ReadCapacityUnits: %@,", readCapacityUnits]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"WriteCapacityUnits: %@,", writeCapacityUnits]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


@end
