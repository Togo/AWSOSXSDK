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

#import "EC2InstanceState.h"
#import "EC2ProductCode.h"
#import "EC2Placement.h"
#import "EC2Monitoring.h"
#import "EC2StateReason.h"
#import "EC2InstanceBlockDeviceMapping.h"
#import "EC2InstanceLicense.h"
#import "EC2Tag.h"
#import "EC2GroupIdentifier.h"
#import "EC2InstanceNetworkInterface.h"
#import "EC2IamInstanceProfile.h"


/**
 * Instance
 */

@interface EC2Instance : NSObject {
    NSString *instanceId;
    NSString *imageId;
    EC2InstanceState *state;
    NSString *privateDnsName;
    NSString *publicDnsName;
    NSString *stateTransitionReason;
    NSString *keyName;
    NSNumber *amiLaunchIndex;
    NSMutableArray *productCodes;
    NSString *instanceType;
    NSDate *launchTime;
    EC2Placement *placement;
    NSString *kernelId;
    NSString *ramdiskId;
    NSString *platform;
    EC2Monitoring *monitoring;
    NSString *subnetId;
    NSString *vpcId;
    NSString *privateIpAddress;
    NSString *publicIpAddress;
    EC2StateReason *stateReason;
    NSString *architecture;
    NSString *rootDeviceType;
    NSString *rootDeviceName;
    NSMutableArray *blockDeviceMappings;
    NSString *virtualizationType;
    NSString *instanceLifecycle;
    NSString *spotInstanceRequestId;
    EC2InstanceLicense *license;
    NSString *clientToken;
    NSMutableArray *tags;
    NSMutableArray *securityGroups;
    bool sourceDestCheck;
    bool sourceDestCheckIsSet;
    NSString *hypervisor;
    NSMutableArray *networkInterfaces;
    EC2IamInstanceProfile *iamInstanceProfile;
    bool ebsOptimized;
    bool ebsOptimizedIsSet;
}


/**
 * Default constructor for a new  object.  Callers should use the
 * property methods to initialize this object after creating it.
 */
- (id)init;

/**
 * Unique ID of the instance launched.
 */
@property (nonatomic, strong) NSString *instanceId;

/**
 * Image ID of the AMI used to launch the instance.
 */
@property (nonatomic, strong) NSString *imageId;

/**
 * The current state of the instance.
 */
@property (nonatomic, strong) EC2InstanceState *state;

/**
 * The private DNS name assigned to the instance. This DNS name can only
 * be used inside the Amazon EC2 network. This element remains empty
 * until the instance enters a running state.
 */
@property (nonatomic, strong) NSString *privateDnsName;

/**
 * The public DNS name assigned to the instance. This DNS name is
 * contactable from outside the Amazon EC2 network. This element remains
 * empty until the instance enters a running state.
 */
@property (nonatomic, strong) NSString *publicDnsName;

/**
 * Reason for the most recent state transition. This might be an empty
 * string.
 */
@property (nonatomic, strong) NSString *stateTransitionReason;

/**
 * If this instance was launched with an associated key pair, this
 * displays the key pair name.
 */
@property (nonatomic, strong) NSString *keyName;

/**
 * The AMI launch index, which can be used to find this instance within
 * the launch group.
 */
@property (nonatomic, strong) NSNumber *amiLaunchIndex;

/**
 * Product codes attached to this instance.
 */
@property (nonatomic, strong) NSMutableArray *productCodes;

/**
 * The instance type. For more information on instance types, please see
 * the <a
 * "http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/">
 * Amazon Elastic Compute Cloud Developer Guide</a>.
 * <p>
 * <b>Constraints:</b><br/>
 * <b>Allowed Values: </b>t1.micro, m1.small, m1.medium, m1.large, m1.xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, m3.xlarge, m3.2xlarge, c1.medium, c1.xlarge, hi1.4xlarge, hs1.8xlarge, cc1.4xlarge, cc2.8xlarge, cg1.4xlarge
 */
@property (nonatomic, strong) NSString *instanceType;

/**
 * The time this instance launched.
 */
@property (nonatomic, strong) NSDate *launchTime;

/**
 * The location where this instance launched.
 */
@property (nonatomic, strong) EC2Placement *placement;

/**
 * Kernel associated with this instance.
 */
@property (nonatomic, strong) NSString *kernelId;

/**
 * RAM disk associated with this instance.
 */
@property (nonatomic, strong) NSString *ramdiskId;

/**
 * Platform of the instance (e.g., Windows).
 */
@property (nonatomic, strong) NSString *platform;

/**
 * Monitoring status for this instance.
 */
@property (nonatomic, strong) EC2Monitoring *monitoring;

/**
 * Specifies the Amazon VPC subnet ID in which the instance is running.
 */
@property (nonatomic, strong) NSString *subnetId;

/**
 * Specifies the Amazon VPC in which the instance is running.
 */
@property (nonatomic, strong) NSString *vpcId;

/**
 * Specifies the private IP address that is assigned to the instance
 * (Amazon VPC).
 */
@property (nonatomic, strong) NSString *privateIpAddress;

/**
 * Specifies the IP address of the instance.
 */
@property (nonatomic, strong) NSString *publicIpAddress;

/**
 * The reason for the state change.
 */
@property (nonatomic, strong) EC2StateReason *stateReason;

/**
 * The architecture of this instance.
 */
@property (nonatomic, strong) NSString *architecture;

/**
 * The root device type used by the AMI. The AMI can use an Amazon EBS or
 * instance store root device.
 */
@property (nonatomic, strong) NSString *rootDeviceType;

/**
 * The root device name (e.g., <code>/dev/sda1</code>).
 */
@property (nonatomic, strong) NSString *rootDeviceName;

/**
 * Block device mapping set.
 */
@property (nonatomic, strong) NSMutableArray *blockDeviceMappings;

/**
 * The value of the VirtualizationType property for this object.
 * <p>
 * <b>Constraints:</b><br/>
 * <b>Allowed Values: </b>hvm, paravirtual
 */
@property (nonatomic, strong) NSString *virtualizationType;

/**
 *
 */
@property (nonatomic, strong) NSString *instanceLifecycle;

/**
 *
 */
@property (nonatomic, strong) NSString *spotInstanceRequestId;

/**
 * Represents an active license in use and attached to an Amazon EC2
 * instance.
 */
@property (nonatomic, strong) EC2InstanceLicense *license;

/**
 * The value of the ClientToken property for this object.
 */
@property (nonatomic, strong) NSString *clientToken;

/**
 * A list of tags for the Instance.
 */
@property (nonatomic, strong) NSMutableArray *tags;

/**
 * The value of the SecurityGroups property for this object.
 */
@property (nonatomic, strong) NSMutableArray *securityGroups;

/**
 * The value of the SourceDestCheck property for this object.
 */
@property (nonatomic) bool sourceDestCheck;

@property (nonatomic, readonly) bool sourceDestCheckIsSet;

/**
 * The value of the Hypervisor property for this object.
 * <p>
 * <b>Constraints:</b><br/>
 * <b>Allowed Values: </b>ovm, xen
 */
@property (nonatomic, strong) NSString *hypervisor;

/**
 * The value of the NetworkInterfaces property for this object.
 */
@property (nonatomic, strong) NSMutableArray *networkInterfaces;

/**
 * The value of the IamInstanceProfile property for this object.
 */
@property (nonatomic, strong) EC2IamInstanceProfile *iamInstanceProfile;

/**
 * The value of the EbsOptimized property for this object.
 */
@property (nonatomic) bool ebsOptimized;

@property (nonatomic, readonly) bool ebsOptimizedIsSet;

/**
 * Adds a single object to productCodes.
 * This function will alloc and init productCodes if not already done.
 */
- (void)addProductCode:(EC2ProductCode *)productCodeObject;

/**
 * Adds a single object to blockDeviceMappings.
 * This function will alloc and init blockDeviceMappings if not already done.
 */
- (void)addBlockDeviceMapping:(EC2InstanceBlockDeviceMapping *)blockDeviceMappingObject;

/**
 * Adds a single object to tags.
 * This function will alloc and init tags if not already done.
 */
- (void)addTag:(EC2Tag *)tagObject;

/**
 * Adds a single object to securityGroups.
 * This function will alloc and init securityGroups if not already done.
 */
- (void)addSecurityGroup:(EC2GroupIdentifier *)securityGroupObject;

/**
 * Adds a single object to networkInterfaces.
 * This function will alloc and init networkInterfaces if not already done.
 */
- (void)addNetworkInterface:(EC2InstanceNetworkInterface *)networkInterfaceObject;

/**
 * Returns a string representation of this object; useful for testing and
 * debugging.
 *
 * @return A string representation of this object.
 */
- (NSString *)description;


@end
