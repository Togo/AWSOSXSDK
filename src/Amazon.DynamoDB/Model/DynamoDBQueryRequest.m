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

#import "DynamoDBQueryRequest.h"


@implementation DynamoDBQueryRequest

@synthesize tableName;
@synthesize attributesToGet;
@synthesize limit;
@synthesize consistentRead;
@synthesize consistentReadIsSet;
@synthesize count;
@synthesize countIsSet;
@synthesize hashKeyValue;
@synthesize rangeKeyCondition;
@synthesize scanIndexForward;
@synthesize scanIndexForwardIsSet;
@synthesize exclusiveStartKey;


-(id)init
{
    if (self = [super init]) {
        tableName             = nil;
        attributesToGet       = [[NSMutableArray alloc] initWithCapacity:1];
        limit                 = nil;
        consistentRead        = NO;
        consistentReadIsSet   = NO;
        count                 = NO;
        countIsSet            = NO;
        hashKeyValue          = nil;
        rangeKeyCondition     = nil;
        scanIndexForward      = NO;
        scanIndexForwardIsSet = NO;
        exclusiveStartKey     = nil;
    }

    return self;
}

-(id)initWithTableName:(NSString *)theTableName andHashKeyValue:(DynamoDBAttributeValue *)theHashKeyValue
{
    if (self = [self init]) {
        self.tableName    = theTableName;
        self.hashKeyValue = theHashKeyValue;
    }

    return self;
}


-(void)addAttributesToGet:(NSString *)attributesToGetObject
{
    if (attributesToGet == nil) {
        attributesToGet = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [attributesToGet addObject:attributesToGetObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"TableName: %@,", tableName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AttributesToGet: %@,", attributesToGet]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Limit: %@,", limit]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ConsistentRead: %d,", consistentRead]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Count: %d,", count]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"HashKeyValue: %@,", hashKeyValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"RangeKeyCondition: %@,", rangeKeyCondition]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ScanIndexForward: %d,", scanIndexForward]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ExclusiveStartKey: %@,", exclusiveStartKey]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


-(void)setConsistentRead:(bool)theValue
{
    consistentRead      = theValue;
    consistentReadIsSet = YES;
}

-(void)setCount:(bool)theValue
{
    count      = theValue;
    countIsSet = YES;
}

-(void)setScanIndexForward:(bool)theValue
{
    scanIndexForward      = theValue;
    scanIndexForwardIsSet = YES;
}




@end
