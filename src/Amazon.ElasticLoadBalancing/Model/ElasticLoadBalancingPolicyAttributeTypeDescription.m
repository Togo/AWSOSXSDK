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

#import "ElasticLoadBalancingPolicyAttributeTypeDescription.h"


@implementation ElasticLoadBalancingPolicyAttributeTypeDescription

@synthesize attributeName;
@synthesize attributeType;
@synthesize descriptionValue;
@synthesize defaultValue;
@synthesize cardinality;


-(id)init
{
    if (self = [super init]) {
        attributeName    = nil;
        attributeType    = nil;
        descriptionValue = nil;
        defaultValue     = nil;
        cardinality      = nil;
    }

    return self;
}



-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AttributeName: %@,", attributeName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AttributeType: %@,", attributeType]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Description: %@,", descriptionValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"DefaultValue: %@,", defaultValue]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Cardinality: %@,", cardinality]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}





@end
