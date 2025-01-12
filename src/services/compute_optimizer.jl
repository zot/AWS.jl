# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: compute_optimizer
using AWS.Compat
using AWS.UUIDs

"""
    describe_recommendation_export_jobs()
    describe_recommendation_export_jobs(params::Dict{String,<:Any})

Describes recommendation export jobs created in the last seven days. Use the
ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions to
request an export of your recommendations. Then use the DescribeRecommendationExportJobs
action to view your export jobs.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: An array of objects that describe a filter to return a more specific list of
  export jobs.
- `"jobIds"`: The identification numbers of the export jobs to return. An export job ID is
  returned when you create an export using the ExportAutoScalingGroupRecommendations or
  ExportEC2InstanceRecommendations actions. All export jobs created in the last seven days
  are returned if this parameter is omitted.
- `"maxResults"`: The maximum number of export jobs to return with a single request. To
  retrieve the remaining results, make another request with the returned NextToken value.
- `"nextToken"`: The token to advance to the next page of export jobs.
"""
describe_recommendation_export_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("DescribeRecommendationExportJobs"; aws_config=aws_config)
describe_recommendation_export_jobs(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("DescribeRecommendationExportJobs", params; aws_config=aws_config)

"""
    export_auto_scaling_group_recommendations(s3_destination_config)
    export_auto_scaling_group_recommendations(s3_destination_config, params::Dict{String,<:Any})

Exports optimization recommendations for Auto Scaling groups. Recommendations are exported
in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation
(.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations in the Compute Optimizer User
Guide. You can have only one Auto Scaling group export job in progress per AWS Region.

# Arguments
- `s3_destination_config`: An object to specify the destination Amazon Simple Storage
  Service (Amazon S3) bucket name and key prefix for the export job. You must create the
  destination Amazon S3 bucket for your recommendations export before you create the export
  job. Compute Optimizer does not create the S3 bucket for you. After you create the S3
  bucket, ensure that it has the required permission policy to allow Compute Optimizer to
  write the export file to it. If you plan to specify an object prefix when you create the
  export job, you must include the object prefix in the policy that you add to the S3 bucket.
  For more information, see Amazon S3 Bucket Policy for Compute Optimizer in the Compute
  Optimizer user guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accountIds"`: The IDs of the AWS accounts for which to export Auto Scaling group
  recommendations. If your account is the management account of an organization, use this
  parameter to specify the member account for which you want to export recommendations. This
  parameter cannot be specified together with the include member accounts parameter. The
  parameters are mutually exclusive. Recommendations for member accounts are not included in
  the export if this parameter, or the include member accounts parameter, is omitted. You can
  specify multiple account IDs per request.
- `"fieldsToExport"`: The recommendations data to include in the export file. For more
  information about the fields that can be exported, see Exported files in the Compute
  Optimizer User Guide.
- `"fileFormat"`: The format of the export file. The only export file format currently
  supported is Csv.
- `"filters"`: An array of objects that describe a filter to export a more specific set of
  Auto Scaling group recommendations.
- `"includeMemberAccounts"`: Indicates whether to include recommendations for resources in
  all member accounts of the organization if your account is the management account of an
  organization. The member accounts must also be opted in to Compute Optimizer.
  Recommendations for member accounts of the organization are not included in the export file
  if this parameter is omitted. This parameter cannot be specified together with the account
  IDs parameter. The parameters are mutually exclusive. Recommendations for member accounts
  are not included in the export if this parameter, or the account IDs parameter, is omitted.
"""
export_auto_scaling_group_recommendations(s3DestinationConfig; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("ExportAutoScalingGroupRecommendations", Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig); aws_config=aws_config)
export_auto_scaling_group_recommendations(s3DestinationConfig, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("ExportAutoScalingGroupRecommendations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig), params)); aws_config=aws_config)

"""
    export_ec2_instance_recommendations(s3_destination_config)
    export_ec2_instance_recommendations(s3_destination_config, params::Dict{String,<:Any})

Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported
in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation
(.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you
specify. For more information, see Exporting Recommendations in the Compute Optimizer User
Guide. You can have only one Amazon EC2 instance export job in progress per AWS Region.

# Arguments
- `s3_destination_config`: An object to specify the destination Amazon Simple Storage
  Service (Amazon S3) bucket name and key prefix for the export job. You must create the
  destination Amazon S3 bucket for your recommendations export before you create the export
  job. Compute Optimizer does not create the S3 bucket for you. After you create the S3
  bucket, ensure that it has the required permission policy to allow Compute Optimizer to
  write the export file to it. If you plan to specify an object prefix when you create the
  export job, you must include the object prefix in the policy that you add to the S3 bucket.
  For more information, see Amazon S3 Bucket Policy for Compute Optimizer in the Compute
  Optimizer user guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accountIds"`: The IDs of the AWS accounts for which to export instance recommendations.
  If your account is the management account of an organization, use this parameter to specify
  the member account for which you want to export recommendations. This parameter cannot be
  specified together with the include member accounts parameter. The parameters are mutually
  exclusive. Recommendations for member accounts are not included in the export if this
  parameter, or the include member accounts parameter, is omitted. You can specify multiple
  account IDs per request.
- `"fieldsToExport"`: The recommendations data to include in the export file. For more
  information about the fields that can be exported, see Exported files in the Compute
  Optimizer User Guide.
- `"fileFormat"`: The format of the export file. The only export file format currently
  supported is Csv.
- `"filters"`: An array of objects that describe a filter to export a more specific set of
  instance recommendations.
- `"includeMemberAccounts"`: Indicates whether to include recommendations for resources in
  all member accounts of the organization if your account is the management account of an
  organization. The member accounts must also be opted in to Compute Optimizer.
  Recommendations for member accounts of the organization are not included in the export file
  if this parameter is omitted. Recommendations for member accounts are not included in the
  export if this parameter, or the account IDs parameter, is omitted.
"""
export_ec2_instance_recommendations(s3DestinationConfig; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("ExportEC2InstanceRecommendations", Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig); aws_config=aws_config)
export_ec2_instance_recommendations(s3DestinationConfig, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("ExportEC2InstanceRecommendations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig), params)); aws_config=aws_config)

"""
    get_auto_scaling_group_recommendations()
    get_auto_scaling_group_recommendations(params::Dict{String,<:Any})

Returns Auto Scaling group recommendations. AWS Compute Optimizer generates recommendations
for Amazon EC2 Auto Scaling groups that meet a specific set of requirements. For more
information, see the Supported resources and requirements in the AWS Compute Optimizer User
Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accountIds"`: The ID of the AWS account for which to return Auto Scaling group
  recommendations. If your account is the management account of an organization, use this
  parameter to specify the member account for which you want to return Auto Scaling group
  recommendations. Only one account ID can be specified per request.
- `"autoScalingGroupArns"`: The Amazon Resource Name (ARN) of the Auto Scaling groups for
  which to return recommendations.
- `"filters"`: An array of objects that describe a filter that returns a more specific list
  of Auto Scaling group recommendations.
- `"maxResults"`: The maximum number of Auto Scaling group recommendations to return with a
  single request. To retrieve the remaining results, make another request with the returned
  NextToken value.
- `"nextToken"`: The token to advance to the next page of Auto Scaling group
  recommendations.
"""
get_auto_scaling_group_recommendations(; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetAutoScalingGroupRecommendations"; aws_config=aws_config)
get_auto_scaling_group_recommendations(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetAutoScalingGroupRecommendations", params; aws_config=aws_config)

"""
    get_ebsvolume_recommendations()
    get_ebsvolume_recommendations(params::Dict{String,<:Any})

Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations. AWS Compute
Optimizer generates recommendations for Amazon EBS volumes that meet a specific set of
requirements. For more information, see the Supported resources and requirements in the AWS
Compute Optimizer User Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accountIds"`: The ID of the AWS account for which to return volume recommendations. If
  your account is the management account of an organization, use this parameter to specify
  the member account for which you want to return volume recommendations. Only one account ID
  can be specified per request.
- `"filters"`: An array of objects that describe a filter that returns a more specific list
  of volume recommendations.
- `"maxResults"`: The maximum number of volume recommendations to return with a single
  request. To retrieve the remaining results, make another request with the returned
  NextToken value.
- `"nextToken"`: The token to advance to the next page of volume recommendations.
- `"volumeArns"`: The Amazon Resource Name (ARN) of the volumes for which to return
  recommendations.
"""
get_ebsvolume_recommendations(; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEBSVolumeRecommendations"; aws_config=aws_config)
get_ebsvolume_recommendations(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEBSVolumeRecommendations", params; aws_config=aws_config)

"""
    get_ec2_instance_recommendations()
    get_ec2_instance_recommendations(params::Dict{String,<:Any})

Returns Amazon EC2 instance recommendations. AWS Compute Optimizer generates
recommendations for Amazon Elastic Compute Cloud (Amazon EC2) instances that meet a
specific set of requirements. For more information, see the Supported resources and
requirements in the AWS Compute Optimizer User Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accountIds"`: The ID of the AWS account for which to return instance recommendations.
  If your account is the management account of an organization, use this parameter to specify
  the member account for which you want to return instance recommendations. Only one account
  ID can be specified per request.
- `"filters"`: An array of objects that describe a filter that returns a more specific list
  of instance recommendations.
- `"instanceArns"`: The Amazon Resource Name (ARN) of the instances for which to return
  recommendations.
- `"maxResults"`: The maximum number of instance recommendations to return with a single
  request. To retrieve the remaining results, make another request with the returned
  NextToken value.
- `"nextToken"`: The token to advance to the next page of instance recommendations.
"""
get_ec2_instance_recommendations(; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEC2InstanceRecommendations"; aws_config=aws_config)
get_ec2_instance_recommendations(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEC2InstanceRecommendations", params; aws_config=aws_config)

"""
    get_ec2_recommendation_projected_metrics(end_time, instance_arn, period, start_time, stat)
    get_ec2_recommendation_projected_metrics(end_time, instance_arn, period, start_time, stat, params::Dict{String,<:Any})

Returns the projected utilization metrics of Amazon EC2 instance recommendations.  The Cpu
and Memory metrics are the only projected utilization metrics returned when you run this
action. Additionally, the Memory metric is returned only for resources that have the
unified CloudWatch agent installed on them. For more information, see Enabling Memory
Utilization with the CloudWatch Agent.

# Arguments
- `end_time`: The time stamp of the last projected metrics data point to return.
- `instance_arn`: The Amazon Resource Name (ARN) of the instances for which to return
  recommendation projected metrics.
- `period`: The granularity, in seconds, of the projected metrics data points.
- `start_time`: The time stamp of the first projected metrics data point to return.
- `stat`: The statistic of the projected metrics.

"""
get_ec2_recommendation_projected_metrics(endTime, instanceArn, period, startTime, stat; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEC2RecommendationProjectedMetrics", Dict{String, Any}("endTime"=>endTime, "instanceArn"=>instanceArn, "period"=>period, "startTime"=>startTime, "stat"=>stat); aws_config=aws_config)
get_ec2_recommendation_projected_metrics(endTime, instanceArn, period, startTime, stat, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEC2RecommendationProjectedMetrics", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("endTime"=>endTime, "instanceArn"=>instanceArn, "period"=>period, "startTime"=>startTime, "stat"=>stat), params)); aws_config=aws_config)

"""
    get_enrollment_status()
    get_enrollment_status(params::Dict{String,<:Any})

Returns the enrollment (opt in) status of an account to the AWS Compute Optimizer service.
If the account is the management account of an organization, this action also confirms the
enrollment status of member accounts within the organization.

"""
get_enrollment_status(; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEnrollmentStatus"; aws_config=aws_config)
get_enrollment_status(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetEnrollmentStatus", params; aws_config=aws_config)

"""
    get_lambda_function_recommendations()
    get_lambda_function_recommendations(params::Dict{String,<:Any})

Returns AWS Lambda function recommendations. AWS Compute Optimizer generates
recommendations for functions that meet a specific set of requirements. For more
information, see the Supported resources and requirements in the AWS Compute Optimizer User
Guide.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accountIds"`: The ID of the AWS account for which to return function recommendations.
  If your account is the management account of an organization, use this parameter to specify
  the member account for which you want to return function recommendations. Only one account
  ID can be specified per request.
- `"filters"`: An array of objects that describe a filter that returns a more specific list
  of function recommendations.
- `"functionArns"`: The Amazon Resource Name (ARN) of the functions for which to return
  recommendations. You can specify a qualified or unqualified ARN. If you specify an
  unqualified ARN without a function version suffix, Compute Optimizer will return
  recommendations for the latest (LATEST) version of the function. If you specify a qualified
  ARN with a version suffix, Compute Optimizer will return recommendations for the specified
  function version. For more information about using function versions, see Using versions in
  the AWS Lambda Developer Guide.
- `"maxResults"`: The maximum number of function recommendations to return with a single
  request. To retrieve the remaining results, make another request with the returned
  NextToken value.
- `"nextToken"`: The token to advance to the next page of function recommendations.
"""
get_lambda_function_recommendations(; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetLambdaFunctionRecommendations"; aws_config=aws_config)
get_lambda_function_recommendations(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetLambdaFunctionRecommendations", params; aws_config=aws_config)

"""
    get_recommendation_summaries()
    get_recommendation_summaries(params::Dict{String,<:Any})

Returns the optimization findings for an account. It returns the number of:   Amazon EC2
instances in an account that are Underprovisioned, Overprovisioned, or Optimized.   Auto
Scaling groups in an account that are NotOptimized, or Optimized.   Amazon EBS volumes in
an account that are NotOptimized, or Optimized.   Lambda functions in an account that are
NotOptimized, or Optimized.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accountIds"`: The ID of the AWS account for which to return recommendation summaries.
  If your account is the management account of an organization, use this parameter to specify
  the member account for which you want to return recommendation summaries. Only one account
  ID can be specified per request.
- `"maxResults"`: The maximum number of recommendation summaries to return with a single
  request. To retrieve the remaining results, make another request with the returned
  NextToken value.
- `"nextToken"`: The token to advance to the next page of recommendation summaries.
"""
get_recommendation_summaries(; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetRecommendationSummaries"; aws_config=aws_config)
get_recommendation_summaries(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("GetRecommendationSummaries", params; aws_config=aws_config)

"""
    update_enrollment_status(status)
    update_enrollment_status(status, params::Dict{String,<:Any})

Updates the enrollment (opt in and opt out) status of an account to the AWS Compute
Optimizer service. If the account is a management account of an organization, this action
can also be used to enroll member accounts within the organization. You must have the
appropriate permissions to opt in to Compute Optimizer, to view its recommendations, and to
opt out. For more information, see Controlling access with AWS Identity and Access
Management in the Compute Optimizer User Guide. When you opt in, Compute Optimizer
automatically creates a Service-Linked Role in your account to access its data. For more
information, see Using Service-Linked Roles for AWS Compute Optimizer in the Compute
Optimizer User Guide.

# Arguments
- `status`: The new enrollment status of the account. The following status options are
  available:    Active - Opts in your account to the Compute Optimizer service. Compute
  Optimizer begins analyzing the configuration and utilization metrics of your AWS resources
  after you opt in. For more information, see Metrics analyzed by AWS Compute Optimizer in
  the Compute Optimizer User Guide.    Inactive - Opts out your account from the Compute
  Optimizer service. Your account's recommendations and related metrics data will be deleted
  from Compute Optimizer after you opt out.    The Pending and Failed options cannot be used
  to update the enrollment status of an account. They are returned in the response of a
  request to update the enrollment status of an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"includeMemberAccounts"`: Indicates whether to enroll member accounts of the
  organization if the account is the management account of an organization.
"""
update_enrollment_status(status; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("UpdateEnrollmentStatus", Dict{String, Any}("status"=>status); aws_config=aws_config)
update_enrollment_status(status, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = compute_optimizer("UpdateEnrollmentStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("status"=>status), params)); aws_config=aws_config)
