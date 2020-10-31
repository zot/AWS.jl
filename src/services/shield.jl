# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: shield
using AWS.Compat
using AWS.UUIDs

"""
    AssociateDRTLogBucket()

Authorizes the DDoS Response Team (DRT) to access the specified Amazon S3 bucket containing your AWS WAF logs. You can associate up to 10 Amazon S3 buckets with your subscription. To use the services of the DRT and make an AssociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan.

# Required Parameters
- `LogBucket`: The Amazon S3 bucket that contains your AWS WAF logs.

"""
associate_drtlog_bucket(LogBucket; aws_config::AWSConfig=global_aws_config()) = shield("AssociateDRTLogBucket", Dict{String, Any}("LogBucket"=>LogBucket); aws_config=aws_config)
associate_drtlog_bucket(LogBucket, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("AssociateDRTLogBucket", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LogBucket"=>LogBucket), args)); aws_config=aws_config)

"""
    AssociateDRTRole()

Authorizes the DDoS Response Team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the DRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs. You can associate only one RoleArn with your subscription. If you submit an AssociateDRTRole request for an account that already has an associated role, the new RoleArn will replace the existing RoleArn.  Prior to making the AssociateDRTRole request, you must attach the AWSShieldDRTAccessPolicy managed policy to the role you will specify in the request. For more information see Attaching and Detaching IAM Policies. The role must also trust the service principal  drt.shield.amazonaws.com. For more information, see IAM JSON Policy Elements: Principal. The DRT will have access only to your AWS WAF and Shield resources. By submitting this request, you authorize the DRT to inspect your AWS WAF and Shield configuration and create and update AWS WAF rules and web ACLs on your behalf. The DRT takes these actions only if explicitly authorized by you. You must have the iam:PassRole permission to make an AssociateDRTRole request. For more information, see Granting a User Permissions to Pass a Role to an AWS Service.  To use the services of the DRT and make an AssociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan.

# Required Parameters
- `RoleArn`: The Amazon Resource Name (ARN) of the role the DRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the AWSShieldDRTAccessPolicy managed policy to this role. For more information see Attaching and Detaching IAM Policies.

"""
associate_drtrole(RoleArn; aws_config::AWSConfig=global_aws_config()) = shield("AssociateDRTRole", Dict{String, Any}("RoleArn"=>RoleArn); aws_config=aws_config)
associate_drtrole(RoleArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("AssociateDRTRole", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("RoleArn"=>RoleArn), args)); aws_config=aws_config)

"""
    AssociateHealthCheck()

Adds health-based detection to the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation.  You define the health check in Route 53 and then associate it with your Shield Advanced protection. For more information, see Shield Advanced Health-Based Detection in the AWS WAF and AWS Shield Developer Guide. 

# Required Parameters
- `HealthCheckArn`: The Amazon Resource Name (ARN) of the health check to associate with the protection.
- `ProtectionId`: The unique identifier (ID) for the Protection object to add the health check association to. 

"""
associate_health_check(HealthCheckArn, ProtectionId; aws_config::AWSConfig=global_aws_config()) = shield("AssociateHealthCheck", Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId); aws_config=aws_config)
associate_health_check(HealthCheckArn, ProtectionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("AssociateHealthCheck", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId), args)); aws_config=aws_config)

"""
    AssociateProactiveEngagementDetails()

Initializes proactive engagement and sets the list of contacts for the DDoS Response Team (DRT) to use. You must provide at least one phone number in the emergency contact list.  After you have initialized proactive engagement using this call, to disable or enable proactive engagement, use the calls DisableProactiveEngagement and EnableProactiveEngagement.   This call defines the list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you for escalations to the DRT and to initiate proactive customer support. The contacts that you provide in the request replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using DescribeEmergencyContactSettings and then provide it to this call.  

# Required Parameters
- `EmergencyContactList`: A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you for escalations to the DRT and to initiate proactive customer support.  To enable proactive engagement, the contact list must include at least one phone number.  The contacts that you provide here replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using DescribeEmergencyContactSettings and then provide it here.  

"""
associate_proactive_engagement_details(EmergencyContactList; aws_config::AWSConfig=global_aws_config()) = shield("AssociateProactiveEngagementDetails", Dict{String, Any}("EmergencyContactList"=>EmergencyContactList); aws_config=aws_config)
associate_proactive_engagement_details(EmergencyContactList, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("AssociateProactiveEngagementDetails", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("EmergencyContactList"=>EmergencyContactList), args)); aws_config=aws_config)

"""
    CreateProtection()

Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone. You can add protection to only a single resource with each CreateProtection request. If you want to add protection to multiple resources at once, use the AWS WAF console. For more information see Getting Started with AWS Shield Advanced and Add AWS Shield Advanced Protection to more AWS Resources.

# Required Parameters
- `Name`: Friendly name for the Protection you are creating.
- `ResourceArn`: The ARN (Amazon Resource Name) of the resource to be protected. The ARN should be in one of the following formats:   For an Application Load Balancer: arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id     For an Elastic Load Balancer (Classic Load Balancer): arn:aws:elasticloadbalancing:region:account-id:loadbalancer/load-balancer-name     For an AWS CloudFront distribution: arn:aws:cloudfront::account-id:distribution/distribution-id     For an AWS Global Accelerator accelerator: arn:aws:globalaccelerator::account-id:accelerator/accelerator-id     For Amazon Route 53: arn:aws:route53:::hostedzone/hosted-zone-id     For an Elastic IP address: arn:aws:ec2:region:account-id:eip-allocation/allocation-id    

"""
create_protection(Name, ResourceArn; aws_config::AWSConfig=global_aws_config()) = shield("CreateProtection", Dict{String, Any}("Name"=>Name, "ResourceArn"=>ResourceArn); aws_config=aws_config)
create_protection(Name, ResourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("CreateProtection", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "ResourceArn"=>ResourceArn), args)); aws_config=aws_config)

"""
    CreateSubscription()

Activates AWS Shield Advanced for an account. When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an UpdateSubscription request. 

"""
create_subscription(; aws_config::AWSConfig=global_aws_config()) = shield("CreateSubscription"; aws_config=aws_config)
create_subscription(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("CreateSubscription", args; aws_config=aws_config)

"""
    DeleteProtection()

Deletes an AWS Shield Advanced Protection.

# Required Parameters
- `ProtectionId`: The unique identifier (ID) for the Protection object to be deleted.

"""
delete_protection(ProtectionId; aws_config::AWSConfig=global_aws_config()) = shield("DeleteProtection", Dict{String, Any}("ProtectionId"=>ProtectionId); aws_config=aws_config)
delete_protection(ProtectionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DeleteProtection", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProtectionId"=>ProtectionId), args)); aws_config=aws_config)

"""
    DeleteSubscription()

Removes AWS Shield Advanced from an account. AWS Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment. 

"""
delete_subscription(; aws_config::AWSConfig=global_aws_config()) = shield("DeleteSubscription"; aws_config=aws_config)
delete_subscription(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DeleteSubscription", args; aws_config=aws_config)

"""
    DescribeAttack()

Describes the details of a DDoS attack. 

# Required Parameters
- `AttackId`: The unique identifier (ID) for the attack that to be described.

"""
describe_attack(AttackId; aws_config::AWSConfig=global_aws_config()) = shield("DescribeAttack", Dict{String, Any}("AttackId"=>AttackId); aws_config=aws_config)
describe_attack(AttackId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DescribeAttack", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AttackId"=>AttackId), args)); aws_config=aws_config)

"""
    DescribeDRTAccess()

Returns the current role and list of Amazon S3 log buckets used by the DDoS Response Team (DRT) to access your AWS account while assisting with attack mitigation.

"""
describe_drtaccess(; aws_config::AWSConfig=global_aws_config()) = shield("DescribeDRTAccess"; aws_config=aws_config)
describe_drtaccess(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DescribeDRTAccess", args; aws_config=aws_config)

"""
    DescribeEmergencyContactSettings()

A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.

"""
describe_emergency_contact_settings(; aws_config::AWSConfig=global_aws_config()) = shield("DescribeEmergencyContactSettings"; aws_config=aws_config)
describe_emergency_contact_settings(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DescribeEmergencyContactSettings", args; aws_config=aws_config)

"""
    DescribeProtection()

Lists the details of a Protection object.

# Optional Parameters
- `ProtectionId`: The unique identifier (ID) for the Protection object that is described. When submitting the DescribeProtection request you must provide either the ResourceArn or the ProtectionID, but not both.
- `ResourceArn`: The ARN (Amazon Resource Name) of the AWS resource for the Protection object that is described. When submitting the DescribeProtection request you must provide either the ResourceArn or the ProtectionID, but not both.
"""
describe_protection(; aws_config::AWSConfig=global_aws_config()) = shield("DescribeProtection"; aws_config=aws_config)
describe_protection(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DescribeProtection", args; aws_config=aws_config)

"""
    DescribeSubscription()

Provides details about the AWS Shield Advanced subscription for an account.

"""
describe_subscription(; aws_config::AWSConfig=global_aws_config()) = shield("DescribeSubscription"; aws_config=aws_config)
describe_subscription(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DescribeSubscription", args; aws_config=aws_config)

"""
    DisableProactiveEngagement()

Removes authorization from the DDoS Response Team (DRT) to notify contacts about escalations to the DRT and to initiate proactive customer support.

"""
disable_proactive_engagement(; aws_config::AWSConfig=global_aws_config()) = shield("DisableProactiveEngagement"; aws_config=aws_config)
disable_proactive_engagement(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DisableProactiveEngagement", args; aws_config=aws_config)

"""
    DisassociateDRTLogBucket()

Removes the DDoS Response Team's (DRT) access to the specified Amazon S3 bucket containing your AWS WAF logs. To make a DisassociateDRTLogBucket request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTLogBucket request to remove this access.

# Required Parameters
- `LogBucket`: The Amazon S3 bucket that contains your AWS WAF logs.

"""
disassociate_drtlog_bucket(LogBucket; aws_config::AWSConfig=global_aws_config()) = shield("DisassociateDRTLogBucket", Dict{String, Any}("LogBucket"=>LogBucket); aws_config=aws_config)
disassociate_drtlog_bucket(LogBucket, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DisassociateDRTLogBucket", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("LogBucket"=>LogBucket), args)); aws_config=aws_config)

"""
    DisassociateDRTRole()

Removes the DDoS Response Team's (DRT) access to your AWS account. To make a DisassociateDRTRole request, you must be subscribed to the Business Support plan or the Enterprise Support plan. However, if you are not subscribed to one of these support plans, but had been previously and had granted the DRT access to your account, you can submit a DisassociateDRTRole request to remove this access.

"""
disassociate_drtrole(; aws_config::AWSConfig=global_aws_config()) = shield("DisassociateDRTRole"; aws_config=aws_config)
disassociate_drtrole(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DisassociateDRTRole", args; aws_config=aws_config)

"""
    DisassociateHealthCheck()

Removes health-based detection from the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your AWS resource to improve responsiveness and accuracy in attack detection and mitigation.  You define the health check in Route 53 and then associate or disassociate it with your Shield Advanced protection. For more information, see Shield Advanced Health-Based Detection in the AWS WAF and AWS Shield Developer Guide. 

# Required Parameters
- `HealthCheckArn`: The Amazon Resource Name (ARN) of the health check that is associated with the protection.
- `ProtectionId`: The unique identifier (ID) for the Protection object to remove the health check association from. 

"""
disassociate_health_check(HealthCheckArn, ProtectionId; aws_config::AWSConfig=global_aws_config()) = shield("DisassociateHealthCheck", Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId); aws_config=aws_config)
disassociate_health_check(HealthCheckArn, ProtectionId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("DisassociateHealthCheck", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("HealthCheckArn"=>HealthCheckArn, "ProtectionId"=>ProtectionId), args)); aws_config=aws_config)

"""
    EnableProactiveEngagement()

Authorizes the DDoS Response Team (DRT) to use email and phone to notify contacts about escalations to the DRT and to initiate proactive customer support.

"""
enable_proactive_engagement(; aws_config::AWSConfig=global_aws_config()) = shield("EnableProactiveEngagement"; aws_config=aws_config)
enable_proactive_engagement(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("EnableProactiveEngagement", args; aws_config=aws_config)

"""
    GetSubscriptionState()

Returns the SubscriptionState, either Active or Inactive.

"""
get_subscription_state(; aws_config::AWSConfig=global_aws_config()) = shield("GetSubscriptionState"; aws_config=aws_config)
get_subscription_state(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("GetSubscriptionState", args; aws_config=aws_config)

"""
    ListAttacks()

Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.

# Optional Parameters
- `EndTime`: The end of the time period for the attacks. This is a timestamp type. The sample request above indicates a number type because the default used by WAF is Unix time in seconds. However any valid timestamp format is allowed. 
- `MaxResults`: The maximum number of AttackSummary objects to be returned. If this is left blank, the first 20 results will be returned. This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of AttackSummary objects returned could be less than MaxResults, even if there are still more AttackSummary objects yet to return. If there are more AttackSummary objects to return, AWS WAF will always also return a NextToken.
- `NextToken`: The ListAttacksRequest.NextMarker value from a previous call to ListAttacksRequest. Pass null if this is the first call.
- `ResourceArns`: The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.
- `StartTime`: The start of the time period for the attacks. This is a timestamp type. The sample request above indicates a number type because the default used by WAF is Unix time in seconds. However any valid timestamp format is allowed. 
"""
list_attacks(; aws_config::AWSConfig=global_aws_config()) = shield("ListAttacks"; aws_config=aws_config)
list_attacks(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("ListAttacks", args; aws_config=aws_config)

"""
    ListProtections()

Lists all Protection objects for the account.

# Optional Parameters
- `MaxResults`: The maximum number of Protection objects to be returned. If this is left blank the first 20 results will be returned. This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of Protection objects returned could be less than MaxResults, even if there are still more Protection objects yet to return. If there are more Protection objects to return, AWS WAF will always also return a NextToken.
- `NextToken`: The ListProtectionsRequest.NextToken value from a previous call to ListProtections. Pass null if this is the first call.
"""
list_protections(; aws_config::AWSConfig=global_aws_config()) = shield("ListProtections"; aws_config=aws_config)
list_protections(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("ListProtections", args; aws_config=aws_config)

"""
    UpdateEmergencyContactSettings()

Updates the details of the list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.

# Optional Parameters
- `EmergencyContactList`: A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support. If you have proactive engagement enabled, the contact list must include at least one phone number.
"""
update_emergency_contact_settings(; aws_config::AWSConfig=global_aws_config()) = shield("UpdateEmergencyContactSettings"; aws_config=aws_config)
update_emergency_contact_settings(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("UpdateEmergencyContactSettings", args; aws_config=aws_config)

"""
    UpdateSubscription()

Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.

# Optional Parameters
- `AutoRenew`: When you initally create a subscription, AutoRenew is set to ENABLED. If ENABLED, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an UpdateSubscription request. If the UpdateSubscription request does not included a value for AutoRenew, the existing value for AutoRenew remains unchanged.
"""
update_subscription(; aws_config::AWSConfig=global_aws_config()) = shield("UpdateSubscription"; aws_config=aws_config)
update_subscription(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = shield("UpdateSubscription", args; aws_config=aws_config)
