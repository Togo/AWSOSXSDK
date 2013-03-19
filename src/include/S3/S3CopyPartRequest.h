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

#import <Foundation/Foundation.h>
#import "S3Request.h"
#import "S3MultipartUpload.h"

/** Contains the parameters used for the uploadPart operation.
 *
 */
@interface S3CopyPartRequest:S3Request {
    int      partNumber;
    NSString *uploadId;

    NSString *sourceBucketName;
    NSString *sourceKey;
    NSString *sourceVersionId;

    NSString *destinationBucketName;
    NSString *destinationKey;

    NSString *ifMatch;
    NSString *ifNoneMatch;

    NSDate   *ifModifiedSince;
    NSDate   *ifUnmodifiedSince;

    NSNumber *firstByte;
    NSNumber *lastByte;
}

/** Identifies which part this is. */
@property (nonatomic) int partNumber;

/** The uploadId of the multipart upload that this part is for. */
@property (nonatomic, strong) NSString *uploadId;

@property (nonatomic, strong) NSString *sourceBucketName;
@property (nonatomic, strong) NSString *sourceKey;
@property (nonatomic, strong) NSString *sourceVersionId;

@property (nonatomic, strong) NSString *destinationBucketName;
@property (nonatomic, strong) NSString *destinationKey;

@property (nonatomic, strong) NSString *ifMatch;
@property (nonatomic, strong) NSString *ifNoneMatch;

@property (nonatomic, strong) NSDate   *ifModifiedSince;
@property (nonatomic, strong) NSDate   *ifUnmodifiedSince;

@property (nonatomic, strong) NSNumber *firstByte;
@property (nonatomic, strong) NSNumber *lastByte;

@end
