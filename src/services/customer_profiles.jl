# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: customer_profiles
using AWS.Compat
using AWS.UUIDs

"""
    add_profile_key(domain_name, key_name, profile_id, values)
    add_profile_key(domain_name, key_name, profile_id, values, params::Dict{String,<:Any})

Associates a new key value with a specific profile, such as a Contact Trace Record (CTR)
ContactId. A profile object can have a single unique key and any number of additional keys
that can be used to identify the profile that it belongs to.

# Arguments
- `domain_name`: The unique name of the domain.
- `key_name`: A searchable identifier of a customer profile.
- `profile_id`: The unique identifier of a customer profile.
- `values`: A list of key values.

"""
add_profile_key(DomainName, KeyName, ProfileId, Values; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/keys", Dict{String, Any}("KeyName"=>KeyName, "ProfileId"=>ProfileId, "Values"=>Values); aws_config=aws_config)
add_profile_key(DomainName, KeyName, ProfileId, Values, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/keys", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("KeyName"=>KeyName, "ProfileId"=>ProfileId, "Values"=>Values), params)); aws_config=aws_config)

"""
    create_domain(default_expiration_days, domain_name)
    create_domain(default_expiration_days, domain_name, params::Dict{String,<:Any})

Creates a domain, which is a container for all customer data, such as customer profile
attributes, object types, profile keys, and encryption keys. You can create multiple
domains, and each domain can have multiple third-party integrations. Each Amazon Connect
instance can be associated with only one domain. Multiple Amazon Connect instances can be
associated with one domain.

# Arguments
- `default_expiration_days`: The default number of days until the data within the domain
  expires.
- `domain_name`: The unique name of the domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DeadLetterQueueUrl"`: The URL of the SQS dead letter queue, which is used for reporting
  errors associated with ingesting data from third party applications. You must set up a
  policy on the DeadLetterQueue for the SendMessage operation to enable Amazon Connect
  Customer Profiles to send messages to the DeadLetterQueue.
- `"DefaultEncryptionKey"`: The default encryption key, which is an AWS managed key, is
  used when no specific type of encryption key is specified. It is used to encrypt all data
  before it is placed in permanent or semi-permanent storage.
- `"Tags"`: The tags used to organize, track, or control access for this resource.
"""
create_domain(DefaultExpirationDays, DomainName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)", Dict{String, Any}("DefaultExpirationDays"=>DefaultExpirationDays); aws_config=aws_config)
create_domain(DefaultExpirationDays, DomainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DefaultExpirationDays"=>DefaultExpirationDays), params)); aws_config=aws_config)

"""
    create_profile(domain_name)
    create_profile(domain_name, params::Dict{String,<:Any})

Creates a standard profile. A standard profile represents the following attributes for a
customer profile in a domain.

# Arguments
- `domain_name`: The unique name of the domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AccountNumber"`: A unique account number that you have given to the customer.
- `"AdditionalInformation"`: Any additional information relevant to the customer's profile.
- `"Address"`: A generic address associated with the customer that is not mailing,
  shipping, or billing.
- `"Attributes"`: A key value pair of attributes of a customer profile.
- `"BillingAddress"`: The customer’s billing address.
- `"BirthDate"`: The customer’s birth date.
- `"BusinessEmailAddress"`: The customer’s business email address.
- `"BusinessName"`: The name of the customer’s business.
- `"BusinessPhoneNumber"`: The customer’s business phone number.
- `"EmailAddress"`: The customer's email address, which has not been specified as a
  personal or business address.
- `"FirstName"`: The customer’s first name.
- `"Gender"`: The gender with which the customer identifies.
- `"HomePhoneNumber"`: The customer’s home phone number.
- `"LastName"`: The customer’s last name.
- `"MailingAddress"`: The customer’s mailing address.
- `"MiddleName"`: The customer’s middle name.
- `"MobilePhoneNumber"`: The customer’s mobile phone number.
- `"PartyType"`: The type of profile used to describe the customer.
- `"PersonalEmailAddress"`: The customer’s personal email address.
- `"PhoneNumber"`: The customer's phone number, which has not been specified as a mobile,
  home, or business number.
- `"ShippingAddress"`: The customer’s shipping address.
"""
create_profile(DomainName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles"; aws_config=aws_config)
create_profile(DomainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles", params; aws_config=aws_config)

"""
    delete_domain(domain_name)
    delete_domain(domain_name, params::Dict{String,<:Any})

Deletes a specific domain and all of its customer data, such as customer profile attributes
and their related objects.

# Arguments
- `domain_name`: The unique name of the domain.

"""
delete_domain(DomainName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("DELETE", "/domains/$(DomainName)"; aws_config=aws_config)
delete_domain(DomainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("DELETE", "/domains/$(DomainName)", params; aws_config=aws_config)

"""
    delete_integration(domain_name, uri)
    delete_integration(domain_name, uri, params::Dict{String,<:Any})

Removes an integration from a specific domain.

# Arguments
- `domain_name`: The unique name of the domain.
- `uri`: The URI of the S3 bucket or any other type of data source.

"""
delete_integration(DomainName, Uri; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/integrations/delete", Dict{String, Any}("Uri"=>Uri); aws_config=aws_config)
delete_integration(DomainName, Uri, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/integrations/delete", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Uri"=>Uri), params)); aws_config=aws_config)

"""
    delete_profile(domain_name, profile_id)
    delete_profile(domain_name, profile_id, params::Dict{String,<:Any})

Deletes the standard customer profile and all data pertaining to the profile.

# Arguments
- `domain_name`: The unique name of the domain.
- `profile_id`: The unique identifier of a customer profile.

"""
delete_profile(DomainName, ProfileId; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/delete", Dict{String, Any}("ProfileId"=>ProfileId); aws_config=aws_config)
delete_profile(DomainName, ProfileId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/delete", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProfileId"=>ProfileId), params)); aws_config=aws_config)

"""
    delete_profile_key(domain_name, key_name, profile_id, values)
    delete_profile_key(domain_name, key_name, profile_id, values, params::Dict{String,<:Any})

Removes a searchable key from a customer profile.

# Arguments
- `domain_name`: The unique name of the domain.
- `key_name`: A searchable identifier of a customer profile.
- `profile_id`: The unique identifier of a customer profile.
- `values`: A list of key values.

"""
delete_profile_key(DomainName, KeyName, ProfileId, Values; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/keys/delete", Dict{String, Any}("KeyName"=>KeyName, "ProfileId"=>ProfileId, "Values"=>Values); aws_config=aws_config)
delete_profile_key(DomainName, KeyName, ProfileId, Values, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/keys/delete", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("KeyName"=>KeyName, "ProfileId"=>ProfileId, "Values"=>Values), params)); aws_config=aws_config)

"""
    delete_profile_object(domain_name, object_type_name, profile_id, profile_object_unique_key)
    delete_profile_object(domain_name, object_type_name, profile_id, profile_object_unique_key, params::Dict{String,<:Any})

Removes an object associated with a profile of a given ProfileObjectType.

# Arguments
- `domain_name`: The unique name of the domain.
- `object_type_name`: The name of the profile object type.
- `profile_id`: The unique identifier of a customer profile.
- `profile_object_unique_key`: The unique identifier of the profile object generated by the
  service.

"""
delete_profile_object(DomainName, ObjectTypeName, ProfileId, ProfileObjectUniqueKey; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/objects/delete", Dict{String, Any}("ObjectTypeName"=>ObjectTypeName, "ProfileId"=>ProfileId, "ProfileObjectUniqueKey"=>ProfileObjectUniqueKey); aws_config=aws_config)
delete_profile_object(DomainName, ObjectTypeName, ProfileId, ProfileObjectUniqueKey, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/objects/delete", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ObjectTypeName"=>ObjectTypeName, "ProfileId"=>ProfileId, "ProfileObjectUniqueKey"=>ProfileObjectUniqueKey), params)); aws_config=aws_config)

"""
    delete_profile_object_type(domain_name, object_type_name)
    delete_profile_object_type(domain_name, object_type_name, params::Dict{String,<:Any})

Removes a ProfileObjectType from a specific domain as well as removes all the
ProfileObjects of that type. It also disables integrations from this specific
ProfileObjectType. In addition, it scrubs all of the fields of the standard profile that
were populated from this ProfileObjectType.

# Arguments
- `domain_name`: The unique name of the domain.
- `object_type_name`: The name of the profile object type.

"""
delete_profile_object_type(DomainName, ObjectTypeName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("DELETE", "/domains/$(DomainName)/object-types/$(ObjectTypeName)"; aws_config=aws_config)
delete_profile_object_type(DomainName, ObjectTypeName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("DELETE", "/domains/$(DomainName)/object-types/$(ObjectTypeName)", params; aws_config=aws_config)

"""
    get_domain(domain_name)
    get_domain(domain_name, params::Dict{String,<:Any})

Returns information about a specific domain.

# Arguments
- `domain_name`: A unique name for the domain.

"""
get_domain(DomainName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)"; aws_config=aws_config)
get_domain(DomainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)", params; aws_config=aws_config)

"""
    get_integration(domain_name, uri)
    get_integration(domain_name, uri, params::Dict{String,<:Any})

Returns an integration for a domain.

# Arguments
- `domain_name`: The unique name of the domain.
- `uri`: The URI of the S3 bucket or any other type of data source.

"""
get_integration(DomainName, Uri; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/integrations", Dict{String, Any}("Uri"=>Uri); aws_config=aws_config)
get_integration(DomainName, Uri, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/integrations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Uri"=>Uri), params)); aws_config=aws_config)

"""
    get_profile_object_type(domain_name, object_type_name)
    get_profile_object_type(domain_name, object_type_name, params::Dict{String,<:Any})

Returns the object types for a specific domain.

# Arguments
- `domain_name`: The unique name of the domain.
- `object_type_name`: The name of the profile object type.

"""
get_profile_object_type(DomainName, ObjectTypeName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)/object-types/$(ObjectTypeName)"; aws_config=aws_config)
get_profile_object_type(DomainName, ObjectTypeName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)/object-types/$(ObjectTypeName)", params; aws_config=aws_config)

"""
    get_profile_object_type_template(template_id)
    get_profile_object_type_template(template_id, params::Dict{String,<:Any})

Returns the template information for a specific object type. A template is a predefined
ProfileObjectType, such as “Salesforce-Account” or “Salesforce-Contact.” When a
user sends a ProfileObject, using the PutProfileObject API, with an ObjectTypeName that
matches one of the TemplateIds, it uses the mappings from the template.

# Arguments
- `template_id`: A unique identifier for the object template.

"""
get_profile_object_type_template(TemplateId; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/templates/$(TemplateId)"; aws_config=aws_config)
get_profile_object_type_template(TemplateId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/templates/$(TemplateId)", params; aws_config=aws_config)

"""
    list_account_integrations(uri)
    list_account_integrations(uri, params::Dict{String,<:Any})

Lists all of the integrations associated to a specific URI in the AWS account.

# Arguments
- `uri`: The URI of the S3 bucket or any other type of data source.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of objects returned per page.
- `"next-token"`: The pagination token from the previous ListAccountIntegrations API call.
"""
list_account_integrations(Uri; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/integrations", Dict{String, Any}("Uri"=>Uri); aws_config=aws_config)
list_account_integrations(Uri, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/integrations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Uri"=>Uri), params)); aws_config=aws_config)

"""
    list_domains()
    list_domains(params::Dict{String,<:Any})

Returns a list of all the domains for an AWS account that have been created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of objects returned per page.
- `"next-token"`: The pagination token from the previous ListDomain API call.
"""
list_domains(; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains"; aws_config=aws_config)
list_domains(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains", params; aws_config=aws_config)

"""
    list_integrations(domain_name)
    list_integrations(domain_name, params::Dict{String,<:Any})

Lists all of the integrations in your domain.

# Arguments
- `domain_name`: The unique name of the domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of objects returned per page.
- `"next-token"`: The pagination token from the previous ListIntegrations API call.
"""
list_integrations(DomainName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)/integrations"; aws_config=aws_config)
list_integrations(DomainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)/integrations", params; aws_config=aws_config)

"""
    list_profile_object_type_templates()
    list_profile_object_type_templates(params::Dict{String,<:Any})

Lists all of the template information for object types.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of objects returned per page.
- `"next-token"`: The pagination token from the previous ListObjectTypeTemplates API call.
"""
list_profile_object_type_templates(; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/templates"; aws_config=aws_config)
list_profile_object_type_templates(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/templates", params; aws_config=aws_config)

"""
    list_profile_object_types(domain_name)
    list_profile_object_types(domain_name, params::Dict{String,<:Any})

Lists all of the templates available within the service.

# Arguments
- `domain_name`: The unique name of the domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of objects returned per page.
- `"next-token"`: Identifies the next page of results to return.
"""
list_profile_object_types(DomainName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)/object-types"; aws_config=aws_config)
list_profile_object_types(DomainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/domains/$(DomainName)/object-types", params; aws_config=aws_config)

"""
    list_profile_objects(domain_name, object_type_name, profile_id)
    list_profile_objects(domain_name, object_type_name, profile_id, params::Dict{String,<:Any})

Returns a list of objects associated with a profile of a given ProfileObjectType.

# Arguments
- `domain_name`: The unique name of the domain.
- `object_type_name`: The name of the profile object type.
- `profile_id`: The unique identifier of a customer profile.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of objects returned per page.
- `"next-token"`: The pagination token from the previous call to ListProfileObjects.
"""
list_profile_objects(DomainName, ObjectTypeName, ProfileId; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/objects", Dict{String, Any}("ObjectTypeName"=>ObjectTypeName, "ProfileId"=>ProfileId); aws_config=aws_config)
list_profile_objects(DomainName, ObjectTypeName, ProfileId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/objects", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ObjectTypeName"=>ObjectTypeName, "ProfileId"=>ProfileId), params)); aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Displays the tags associated with an Amazon Connect Customer Profiles resource. In Connect
Customer Profiles, domains, profile object types, and integrations can be tagged.

# Arguments
- `resource_arn`: The ARN of the resource for which you want to view tags.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("GET", "/tags/$(resourceArn)", params; aws_config=aws_config)

"""
    put_integration(domain_name, object_type_name, uri)
    put_integration(domain_name, object_type_name, uri, params::Dict{String,<:Any})

Adds an integration between the service and a third-party service, which includes Amazon
AppFlow and Amazon Connect. An integration can belong to only one domain.

# Arguments
- `domain_name`: The unique name of the domain.
- `object_type_name`: The name of the profile object type.
- `uri`: The URI of the S3 bucket or any other type of data source.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Tags"`: The tags used to organize, track, or control access for this resource.
"""
put_integration(DomainName, ObjectTypeName, Uri; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/integrations", Dict{String, Any}("ObjectTypeName"=>ObjectTypeName, "Uri"=>Uri); aws_config=aws_config)
put_integration(DomainName, ObjectTypeName, Uri, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/integrations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ObjectTypeName"=>ObjectTypeName, "Uri"=>Uri), params)); aws_config=aws_config)

"""
    put_profile_object(domain_name, object, object_type_name)
    put_profile_object(domain_name, object, object_type_name, params::Dict{String,<:Any})

Adds additional objects to customer profiles of a given ObjectType. When adding a specific
profile object, like a Contact Trace Record (CTR), an inferred profile can get created if
it is not mapped to an existing profile. The resulting profile will only have a phone
number populated in the standard ProfileObject. Any additional CTRs with the same phone
number will be mapped to the same inferred profile. When a ProfileObject is created and if
a ProfileObjectType already exists for the ProfileObject, it will provide data to a
standard profile depending on the ProfileObjectType definition. PutProfileObject needs an
ObjectType, which can be created using PutProfileObjectType.

# Arguments
- `domain_name`: The unique name of the domain.
- `object`: A string that is serialized from a JSON object.
- `object_type_name`: The name of the profile object type.

"""
put_profile_object(DomainName, Object, ObjectTypeName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/profiles/objects", Dict{String, Any}("Object"=>Object, "ObjectTypeName"=>ObjectTypeName); aws_config=aws_config)
put_profile_object(DomainName, Object, ObjectTypeName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/profiles/objects", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Object"=>Object, "ObjectTypeName"=>ObjectTypeName), params)); aws_config=aws_config)

"""
    put_profile_object_type(description, domain_name, object_type_name)
    put_profile_object_type(description, domain_name, object_type_name, params::Dict{String,<:Any})

Defines a ProfileObjectType.

# Arguments
- `description`: Description of the profile object type.
- `domain_name`: The unique name of the domain.
- `object_type_name`: The name of the profile object type.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AllowProfileCreation"`: Indicates whether a profile should be created when data is
  received if one doesn’t exist for an object of this type. The default is FALSE. If the
  AllowProfileCreation flag is set to FALSE, then the service tries to fetch a standard
  profile and associate this object with the profile. If it is set to TRUE, and if no match
  is found, then the service creates a new standard profile.
- `"EncryptionKey"`: The customer-provided key to encrypt the profile object that will be
  created in this profile object type.
- `"ExpirationDays"`: The number of days until the data in the object expires.
- `"Fields"`: A map of the name and ObjectType field.
- `"Keys"`: A list of unique keys that can be used to map data to the profile.
- `"Tags"`: The tags used to organize, track, or control access for this resource.
- `"TemplateId"`: A unique identifier for the object template.
"""
put_profile_object_type(Description, DomainName, ObjectTypeName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/object-types/$(ObjectTypeName)", Dict{String, Any}("Description"=>Description); aws_config=aws_config)
put_profile_object_type(Description, DomainName, ObjectTypeName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/object-types/$(ObjectTypeName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Description"=>Description), params)); aws_config=aws_config)

"""
    search_profiles(domain_name, key_name, values)
    search_profiles(domain_name, key_name, values, params::Dict{String,<:Any})

Searches for profiles within a specific domain name using name, phone number, email
address, account number, or a custom defined index.

# Arguments
- `domain_name`: The unique name of the domain.
- `key_name`: A searchable identifier of a customer profile. The predefined keys you can
  use to search include: _account, _profileId, _fullName, _phone, _email, _ctrContactId,
  _marketoLeadId, _salesforceAccountId, _salesforceContactId, _zendeskUserId,
  _zendeskExternalId, _serviceNowSystemId.
- `values`: A list of key values.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"max-results"`: The maximum number of objects returned per page.
- `"next-token"`: The pagination token from the previous SearchProfiles API call.
"""
search_profiles(DomainName, KeyName, Values; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/search", Dict{String, Any}("KeyName"=>KeyName, "Values"=>Values); aws_config=aws_config)
search_profiles(DomainName, KeyName, Values, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/domains/$(DomainName)/profiles/search", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("KeyName"=>KeyName, "Values"=>Values), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer
Profiles resource. Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to access or change only
resources with certain tag values. In Connect Customer Profiles, domains, profile object
types, and integrations can be tagged. Tags don't have any semantic meaning to AWS and are
interpreted strictly as strings of characters. You can use the TagResource action with a
resource that already has tags. If you specify a new tag key, this tag is appended to the
list of tags associated with the resource. If you specify a tag key that is already
associated with the resource, the new tag value that you specify replaces the previous
value for that tag. You can associate as many as 50 tags with a resource.

# Arguments
- `resource_arn`: The ARN of the resource that you're adding tags to.
- `tags`: The tags used to organize, track, or control access for this resource.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes one or more tags from the specified Amazon Connect Customer Profiles resource. In
Connect Customer Profiles, domains, profile object types, and integrations can be tagged.

# Arguments
- `resource_arn`: The ARN of the resource from which you are removing tags.
- `tag_keys`: The list of tag keys to remove from the resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_domain(domain_name)
    update_domain(domain_name, params::Dict{String,<:Any})

Updates the properties of a domain, including creating or selecting a dead letter queue or
an encryption key. Once a domain is created, the name can’t be changed.

# Arguments
- `domain_name`: The unique name for the domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DeadLetterQueueUrl"`: The URL of the SQS dead letter queue, which is used for reporting
  errors associated with ingesting data from third party applications. If specified as an
  empty string, it will clear any existing value. You must set up a policy on the
  DeadLetterQueue for the SendMessage operation to enable Amazon Connect Customer Profiles to
  send messages to the DeadLetterQueue.
- `"DefaultEncryptionKey"`: The default encryption key, which is an AWS managed key, is
  used when no specific type of encryption key is specified. It is used to encrypt all data
  before it is placed in permanent or semi-permanent storage. If specified as an empty
  string, it will clear any existing value.
- `"DefaultExpirationDays"`: The default number of days until the data within the domain
  expires.
- `"Tags"`: The tags used to organize, track, or control access for this resource.
"""
update_domain(DomainName; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)"; aws_config=aws_config)
update_domain(DomainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)", params; aws_config=aws_config)

"""
    update_profile(domain_name, profile_id)
    update_profile(domain_name, profile_id, params::Dict{String,<:Any})

Updates the properties of a profile. The ProfileId is required for updating a customer
profile. When calling the UpdateProfile API, specifying an empty string value means that
any existing value will be removed. Not specifying a string value means that any value
already there will be kept.

# Arguments
- `domain_name`: The unique name of the domain.
- `profile_id`: The unique identifier of a customer profile.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AccountNumber"`: A unique account number that you have given to the customer.
- `"AdditionalInformation"`: Any additional information relevant to the customer's profile.
- `"Address"`: A generic address associated with the customer that is not mailing,
  shipping, or billing.
- `"Attributes"`: A key value pair of attributes of a customer profile.
- `"BillingAddress"`: The customer’s billing address.
- `"BirthDate"`: The customer’s birth date.
- `"BusinessEmailAddress"`: The customer’s business email address.
- `"BusinessName"`: The name of the customer’s business.
- `"BusinessPhoneNumber"`: The customer’s business phone number.
- `"EmailAddress"`: The customer's email address, which has not been specified as a
  personal or business address.
- `"FirstName"`: The customer’s first name.
- `"Gender"`: The gender with which the customer identifies.
- `"HomePhoneNumber"`: The customer’s home phone number.
- `"LastName"`: The customer’s last name.
- `"MailingAddress"`: The customer’s mailing address.
- `"MiddleName"`: The customer’s middle name.
- `"MobilePhoneNumber"`: The customer’s mobile phone number.
- `"PartyType"`: The type of profile used to describe the customer.
- `"PersonalEmailAddress"`: The customer’s personal email address.
- `"PhoneNumber"`: The customer's phone number, which has not been specified as a mobile,
  home, or business number.
- `"ShippingAddress"`: The customer’s shipping address.
"""
update_profile(DomainName, ProfileId; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/profiles", Dict{String, Any}("ProfileId"=>ProfileId); aws_config=aws_config)
update_profile(DomainName, ProfileId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = customer_profiles("PUT", "/domains/$(DomainName)/profiles", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProfileId"=>ProfileId), params)); aws_config=aws_config)
