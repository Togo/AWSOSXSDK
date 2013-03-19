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

#import "CloudWatchGetMetricStatisticsRequest.h"


@implementation CloudWatchGetMetricStatisticsRequest

@synthesize namespace;
@synthesize metricName;
@synthesize dimensions;
@synthesize startTime;
@synthesize endTime;
@synthesize period;
@synthesize statistics;
@synthesize unit;


-(id)init
{
    if (self = [super init]) {
        namespace  = nil;
        metricName = nil;
        dimensions = [[NSMutableArray alloc] initWithCapacity:1];
        startTime  = nil;
        endTime    = nil;
        period     = nil;
        statistics = [[NSMutableArray alloc] initWithCapacity:1];
        unit       = nil;
    }

    return self;
}


-(void)addDimension:(CloudWatchDimension *)dimensionObject
{
    if (dimensions == nil) {
        dimensions = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [dimensions addObject:dimensionObject];
}

-(void)addStatistic:(NSString *)statisticObject
{
    if (statistics == nil) {
        statistics = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [statistics addObject:statisticObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Namespace: %@,", namespace]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"MetricName: %@,", metricName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Dimensions: %@,", dimensions]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"StartTime: %@,", startTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EndTime: %@,", endTime]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Period: %@,", period]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Statistics: %@,", statistics]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Unit: %@,", unit]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}





@end
