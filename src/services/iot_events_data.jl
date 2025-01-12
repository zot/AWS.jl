# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iot_events_data
using AWS.Compat
using AWS.UUIDs

"""
    batch_put_message(messages)
    batch_put_message(messages, params::Dict{String,<:Any})

Sends a set of messages to the AWS IoT Events system. Each message payload is transformed
into the input you specify (\"inputName\") and ingested into any detectors that monitor
that input. If multiple messages are sent, the order in which the messages are processed
isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for
a successful response.

# Arguments
- `messages`: The list of messages to send. Each message has the following format: '{
  \"messageId\": \"string\", \"inputName\": \"string\", \"payload\": \"string\"}'

"""
batch_put_message(messages; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("POST", "/inputs/messages", Dict{String, Any}("messages"=>messages); aws_config=aws_config)
batch_put_message(messages, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("POST", "/inputs/messages", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("messages"=>messages), params)); aws_config=aws_config)

"""
    batch_update_detector(detectors)
    batch_update_detector(detectors, params::Dict{String,<:Any})

Updates the state, variable values, and timer settings of one or more detectors (instances)
of a specified detector model.

# Arguments
- `detectors`: The list of detectors (instances) to update, along with the values to update.

"""
batch_update_detector(detectors; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("POST", "/detectors", Dict{String, Any}("detectors"=>detectors); aws_config=aws_config)
batch_update_detector(detectors, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("POST", "/detectors", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("detectors"=>detectors), params)); aws_config=aws_config)

"""
    describe_detector(detector_model_name)
    describe_detector(detector_model_name, params::Dict{String,<:Any})

Returns information about the specified detector (instance).

# Arguments
- `detector_model_name`: The name of the detector model whose detectors (instances) you
  want information about.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"keyValue"`: A filter used to limit results to detectors (instances) created because of
  the given key ID.
"""
describe_detector(detectorModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("GET", "/detectors/$(detectorModelName)/keyValues/"; aws_config=aws_config)
describe_detector(detectorModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("GET", "/detectors/$(detectorModelName)/keyValues/", params; aws_config=aws_config)

"""
    list_detectors(detector_model_name)
    list_detectors(detector_model_name, params::Dict{String,<:Any})

Lists detectors (the instances of a detector model).

# Arguments
- `detector_model_name`: The name of the detector model whose detectors (instances) are
  listed.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return at one time.
- `"nextToken"`: The token for the next set of results.
- `"stateName"`: A filter that limits results to those detectors (instances) in the given
  state.
"""
list_detectors(detectorModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("GET", "/detectors/$(detectorModelName)"; aws_config=aws_config)
list_detectors(detectorModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events_data("GET", "/detectors/$(detectorModelName)", params; aws_config=aws_config)
