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

#import "CloudWatchPutMetricAlarmRequest.h"


@implementation CloudWatchPutMetricAlarmRequest

@synthesize alarmName;
@synthesize alarmDescription;
@synthesize actionsEnabled;
@synthesize actionsEnabledIsSet;
@synthesize oKActions;
@synthesize alarmActions;
@synthesize insufficientDataActions;
@synthesize metricName;
@synthesize namespace;
@synthesize statistic;
@synthesize dimensions;
@synthesize period;
@synthesize unit;
@synthesize evaluationPeriods;
@synthesize threshold;
@synthesize comparisonOperator;


-(id)init
{
    if (self = [super init]) {
        alarmName               = nil;
        alarmDescription        = nil;
        actionsEnabled          = NO;
        actionsEnabledIsSet     = NO;
        oKActions               = [[NSMutableArray alloc] initWithCapacity:1];
        alarmActions            = [[NSMutableArray alloc] initWithCapacity:1];
        insufficientDataActions = [[NSMutableArray alloc] initWithCapacity:1];
        metricName              = nil;
        namespace               = nil;
        statistic               = nil;
        dimensions              = [[NSMutableArray alloc] initWithCapacity:1];
        period                  = nil;
        unit                    = nil;
        evaluationPeriods       = nil;
        threshold               = nil;
        comparisonOperator      = nil;
    }

    return self;
}


-(void)addOKAction:(NSString *)oKActionObject
{
    if (oKActions == nil) {
        oKActions = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [oKActions addObject:oKActionObject];
}

-(void)addAlarmAction:(NSString *)alarmActionObject
{
    if (alarmActions == nil) {
        alarmActions = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [alarmActions addObject:alarmActionObject];
}

-(void)addInsufficientDataAction:(NSString *)insufficientDataActionObject
{
    if (insufficientDataActions == nil) {
        insufficientDataActions = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [insufficientDataActions addObject:insufficientDataActionObject];
}

-(void)addDimension:(CloudWatchDimension *)dimensionObject
{
    if (dimensions == nil) {
        dimensions = [[NSMutableArray alloc] initWithCapacity:1];
    }

    [dimensions addObject:dimensionObject];
}


-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AlarmName: %@,", alarmName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AlarmDescription: %@,", alarmDescription]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ActionsEnabled: %d,", actionsEnabled]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"OKActions: %@,", oKActions]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"AlarmActions: %@,", alarmActions]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"InsufficientDataActions: %@,", insufficientDataActions]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"MetricName: %@,", metricName]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Namespace: %@,", namespace]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Statistic: %@,", statistic]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Dimensions: %@,", dimensions]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Period: %@,", period]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Unit: %@,", unit]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"EvaluationPeriods: %@,", evaluationPeriods]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"Threshold: %@,", threshold]];
    [buffer appendString:[[NSString alloc] initWithFormat:@"ComparisonOperator: %@,", comparisonOperator]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return buffer;
}


-(void)setActionsEnabled:(bool)theValue
{
    actionsEnabled      = theValue;
    actionsEnabledIsSet = YES;
}




@end
