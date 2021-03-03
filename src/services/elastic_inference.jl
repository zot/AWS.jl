# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: elastic_inference
using AWS.Compat
using AWS.UUIDs

"""
    describe_accelerator_offerings(location_type)
    describe_accelerator_offerings(location_type, params::Dict{String,<:Any})

 Describes the locations in which a given accelerator type or set of types is present in a
given region.

# Arguments
- `location_type`:  The location type that you want to describe accelerator type offerings
  for. It can assume the following values: region: will return the accelerator type offering
  at the regional level. availability-zone: will return the accelerator type offering at the
  availability zone level. availability-zone-id: will return the accelerator type offering at
  the availability zone level returning the availability zone id.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"acceleratorTypes"`:  The list of accelerator types to describe.
"""
describe_accelerator_offerings(locationType; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerator-offerings", Dict{String, Any}("locationType"=>locationType); aws_config=aws_config)
describe_accelerator_offerings(locationType, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerator-offerings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("locationType"=>locationType), params)); aws_config=aws_config)

"""
    describe_accelerator_types()
    describe_accelerator_types(params::Dict{String,<:Any})

 Describes the accelerator types available in a given region, as well as their
characteristics, such as memory and throughput.

"""
describe_accelerator_types(; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/describe-accelerator-types"; aws_config=aws_config)
describe_accelerator_types(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/describe-accelerator-types", params; aws_config=aws_config)

"""
    describe_accelerators()
    describe_accelerators(params::Dict{String,<:Any})

 Describes information over a provided set of accelerators belonging to an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"acceleratorIds"`:  The IDs of the accelerators to describe.
- `"filters"`:  One or more filters. Filter names and values are case-sensitive. Valid
  filter names are: accelerator-types: can provide a list of accelerator type names to filter
  for. instance-id: can provide a list of EC2 instance ids to filter for.
- `"maxResults"`:  The total number of items to return in the command's output. If the
  total number of items available is more than the value specified, a NextToken is provided
  in the command's output. To resume pagination, provide the NextToken value in the
  starting-token argument of a subsequent command. Do not use the NextToken response element
  directly outside of the AWS CLI.
- `"nextToken"`:  A token to specify where to start paginating. This is the NextToken from
  a previously truncated response.
"""
describe_accelerators(; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerators"; aws_config=aws_config)
describe_accelerators(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/describe-accelerators", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

 Returns all tags of an Elastic Inference Accelerator.

# Arguments
- `resource_arn`:  The ARN of the Elastic Inference Accelerator to list the tags for.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("GET", "/tags/$(resourceArn)", params; aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

 Adds the specified tags to an Elastic Inference Accelerator.

# Arguments
- `resource_arn`:  The ARN of the Elastic Inference Accelerator to tag.
- `tags`:  The tags to add to the Elastic Inference Accelerator.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

 Removes the specified tags from an Elastic Inference Accelerator.

# Arguments
- `resource_arn`:  The ARN of the Elastic Inference Accelerator to untag.
- `tag_keys`:  The list of tags to remove from the Elastic Inference Accelerator.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = elastic_inference("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)
