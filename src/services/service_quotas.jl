# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: service_quotas
using AWS.Compat
using AWS.UUIDs

"""
    AssociateServiceQuotaTemplate()

Associates the Service Quotas template with your organization so that when new accounts are created in your organization, the template submits increase requests for the specified service quotas. Use the Service Quotas template to request an increase for any adjustable quota value. After you define the Service Quotas template, use this operation to associate, or enable, the template. 

"""
associate_service_quota_template(; aws_config::AWSConfig=global_aws_config()) = service_quotas("AssociateServiceQuotaTemplate"; aws_config=aws_config)
associate_service_quota_template(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("AssociateServiceQuotaTemplate", args; aws_config=aws_config)

"""
    DeleteServiceQuotaIncreaseRequestFromTemplate()

Removes a service quota increase request from the Service Quotas template. 

# Required Parameters
- `AwsRegion`: Specifies the AWS Region for the quota that you want to delete.
- `QuotaCode`: Specifies the code for the quota that you want to delete.
- `ServiceCode`: Specifies the code for the service that you want to delete.

"""
delete_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("DeleteServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
delete_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("DeleteServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    DisassociateServiceQuotaTemplate()

Disables the Service Quotas template. Once the template is disabled, it does not request quota increases for new accounts in your organization. Disabling the quota template does not apply the quota increase requests from the template.   Related operations    To enable the quota template, call AssociateServiceQuotaTemplate.    To delete a specific service quota from the template, use DeleteServiceQuotaIncreaseRequestFromTemplate.  

"""
disassociate_service_quota_template(; aws_config::AWSConfig=global_aws_config()) = service_quotas("DisassociateServiceQuotaTemplate"; aws_config=aws_config)
disassociate_service_quota_template(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("DisassociateServiceQuotaTemplate", args; aws_config=aws_config)

"""
    GetAWSDefaultServiceQuota()

Retrieves the default service quotas values. The Value returned for each quota is the AWS default value, even if the quotas have been increased.. 

# Required Parameters
- `QuotaCode`: Identifies the service quota you want to select.
- `ServiceCode`: Specifies the service that you want to use.

"""
get_awsdefault_service_quota(QuotaCode, ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetAWSDefaultServiceQuota", Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
get_awsdefault_service_quota(QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetAWSDefaultServiceQuota", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    GetAssociationForServiceQuotaTemplate()

Retrieves the ServiceQuotaTemplateAssociationStatus value from the service. Use this action to determine if the Service Quota template is associated, or enabled. 

"""
get_association_for_service_quota_template(; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetAssociationForServiceQuotaTemplate"; aws_config=aws_config)
get_association_for_service_quota_template(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetAssociationForServiceQuotaTemplate", args; aws_config=aws_config)

"""
    GetRequestedServiceQuotaChange()

Retrieves the details for a particular increase request. 

# Required Parameters
- `RequestId`: Identifies the quota increase request.

"""
get_requested_service_quota_change(RequestId; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetRequestedServiceQuotaChange", Dict{String, Any}("RequestId"=>RequestId); aws_config=aws_config)
get_requested_service_quota_change(RequestId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetRequestedServiceQuotaChange", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("RequestId"=>RequestId), args)); aws_config=aws_config)

"""
    GetServiceQuota()

Returns the details for the specified service quota. This operation provides a different Value than the GetAWSDefaultServiceQuota operation. This operation returns the applied value for each quota. GetAWSDefaultServiceQuota returns the default AWS value for each quota. 

# Required Parameters
- `QuotaCode`: Identifies the service quota you want to select.
- `ServiceCode`: Specifies the service that you want to use.

"""
get_service_quota(QuotaCode, ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetServiceQuota", Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
get_service_quota(QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetServiceQuota", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    GetServiceQuotaIncreaseRequestFromTemplate()

Returns the details of the service quota increase request in your template.

# Required Parameters
- `AwsRegion`: Specifies the AWS Region for the quota that you want to use.
- `QuotaCode`: Specifies the quota you want.
- `ServiceCode`: Specifies the service that you want to use.

"""
get_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
get_service_quota_increase_request_from_template(AwsRegion, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("GetServiceQuotaIncreaseRequestFromTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AwsRegion"=>AwsRegion, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListAWSDefaultServiceQuotas()

Lists all default service quotas for the specified AWS service or all AWS services. ListAWSDefaultServiceQuotas is similar to ListServiceQuotas except for the Value object. The Value object returned by ListAWSDefaultServiceQuotas is the default value assigned by AWS. This request returns a list of all service quotas for the specified service. The listing of each you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 

# Required Parameters
- `ServiceCode`: Specifies the service that you want to use.

# Optional Parameters
- `MaxResults`: (Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.
- `NextToken`: (Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.
"""
list_awsdefault_service_quotas(ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListAWSDefaultServiceQuotas", Dict{String, Any}("ServiceCode"=>ServiceCode); aws_config=aws_config)
list_awsdefault_service_quotas(ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListAWSDefaultServiceQuotas", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListRequestedServiceQuotaChangeHistory()

Requests a list of the changes to quotas for a service.

# Optional Parameters
- `MaxResults`: (Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.
- `NextToken`: (Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.
- `ServiceCode`: Specifies the service that you want to use.
- `Status`: Specifies the status value of the quota increase request.
"""
list_requested_service_quota_change_history(; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistory"; aws_config=aws_config)
list_requested_service_quota_change_history(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistory", args; aws_config=aws_config)

"""
    ListRequestedServiceQuotaChangeHistoryByQuota()

Requests a list of the changes to specific service quotas. This command provides additional granularity over the ListRequestedServiceQuotaChangeHistory command. Once a quota change request has reached CASE_CLOSED, APPROVED, or DENIED, the history has been kept for 90 days.

# Required Parameters
- `QuotaCode`: Specifies the service quota that you want to use
- `ServiceCode`: Specifies the service that you want to use.

# Optional Parameters
- `MaxResults`: (Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.
- `NextToken`: (Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.
- `Status`: Specifies the status value of the quota increase request.
"""
list_requested_service_quota_change_history_by_quota(QuotaCode, ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistoryByQuota", Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
list_requested_service_quota_change_history_by_quota(QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListRequestedServiceQuotaChangeHistoryByQuota", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListServiceQuotaIncreaseRequestsInTemplate()

Returns a list of the quota increase requests in the template. 

# Optional Parameters
- `AwsRegion`: Specifies the AWS Region for the quota that you want to use.
- `MaxResults`: (Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.
- `NextToken`: (Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.
- `ServiceCode`: The identifier for a service. When performing an operation, use the ServiceCode to specify a particular service. 
"""
list_service_quota_increase_requests_in_template(; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListServiceQuotaIncreaseRequestsInTemplate"; aws_config=aws_config)
list_service_quota_increase_requests_in_template(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListServiceQuotaIncreaseRequestsInTemplate", args; aws_config=aws_config)

"""
    ListServiceQuotas()

Lists all service quotas for the specified AWS service. This request returns a list of the service quotas for the specified service. you'll see the default values are the values that AWS provides for the quotas.   Always check the NextToken response parameter when calling any of the List* operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the NextToken response parameter contains a value to pass the next call to the same API to request the next part of the list. 

# Required Parameters
- `ServiceCode`: The identifier for a service. When performing an operation, use the ServiceCode to specify a particular service. 

# Optional Parameters
- `MaxResults`: (Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.
- `NextToken`: (Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.
"""
list_service_quotas(ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListServiceQuotas", Dict{String, Any}("ServiceCode"=>ServiceCode); aws_config=aws_config)
list_service_quotas(ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListServiceQuotas", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    ListServices()

Lists the AWS services available in Service Quotas. Not all AWS services are available in Service Quotas. To list the see the list of the service quotas for a specific service, use ListServiceQuotas.

# Optional Parameters
- `MaxResults`: (Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the NextToken element is present and has a value (isn't null). Include that value as the NextToken request parameter in the call to the operation to get the next part of the results. You should check NextToken after every operation to ensure that you receive all of the results.
- `NextToken`: (Optional) Use this parameter in a request if you receive a NextToken response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's NextToken response to indicate where the output should continue from.
"""
list_services(; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListServices"; aws_config=aws_config)
list_services(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("ListServices", args; aws_config=aws_config)

"""
    PutServiceQuotaIncreaseRequestIntoTemplate()

Defines and adds a quota to the service quota template. To add a quota to the template, you must provide the ServiceCode, QuotaCode, AwsRegion, and DesiredValue. Once you add a quota to the template, use ListServiceQuotaIncreaseRequestsInTemplate to see the list of quotas in the template.

# Required Parameters
- `AwsRegion`: Specifies the AWS Region for the quota. 
- `DesiredValue`: Specifies the new, increased value for the quota. 
- `QuotaCode`: Specifies the service quota that you want to use.
- `ServiceCode`: Specifies the service that you want to use.

"""
put_service_quota_increase_request_into_template(AwsRegion, DesiredValue, QuotaCode, ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("PutServiceQuotaIncreaseRequestIntoTemplate", Dict{String, Any}("AwsRegion"=>AwsRegion, "DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
put_service_quota_increase_request_into_template(AwsRegion, DesiredValue, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("PutServiceQuotaIncreaseRequestIntoTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("AwsRegion"=>AwsRegion, "DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)

"""
    RequestServiceQuotaIncrease()

Retrieves the details of a service quota increase request. The response to this command provides the details in the RequestedServiceQuotaChange object. 

# Required Parameters
- `DesiredValue`: Specifies the value submitted in the service quota increase request. 
- `QuotaCode`: Specifies the service quota that you want to use.
- `ServiceCode`: Specifies the service that you want to use.

"""
request_service_quota_increase(DesiredValue, QuotaCode, ServiceCode; aws_config::AWSConfig=global_aws_config()) = service_quotas("RequestServiceQuotaIncrease", Dict{String, Any}("DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode); aws_config=aws_config)
request_service_quota_increase(DesiredValue, QuotaCode, ServiceCode, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = service_quotas("RequestServiceQuotaIncrease", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DesiredValue"=>DesiredValue, "QuotaCode"=>QuotaCode, "ServiceCode"=>ServiceCode), args)); aws_config=aws_config)
