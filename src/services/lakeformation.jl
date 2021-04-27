# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: lakeformation
using AWS.Compat
using AWS.UUIDs

"""
    batch_grant_permissions(entries)
    batch_grant_permissions(entries, params::Dict{String,<:Any})

Batch operation to grant permissions to the principal.

# Arguments
- `entries`: A list of up to 20 entries for resource permissions to be granted by batch
  operation to the principal.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
"""
batch_grant_permissions(Entries; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("BatchGrantPermissions", Dict{String, Any}("Entries"=>Entries); aws_config=aws_config)
batch_grant_permissions(Entries, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("BatchGrantPermissions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Entries"=>Entries), params)); aws_config=aws_config)

"""
    batch_revoke_permissions(entries)
    batch_revoke_permissions(entries, params::Dict{String,<:Any})

Batch operation to revoke permissions from the principal.

# Arguments
- `entries`: A list of up to 20 entries for resource permissions to be revoked by batch
  operation to the principal.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
"""
batch_revoke_permissions(Entries; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("BatchRevokePermissions", Dict{String, Any}("Entries"=>Entries); aws_config=aws_config)
batch_revoke_permissions(Entries, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("BatchRevokePermissions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Entries"=>Entries), params)); aws_config=aws_config)

"""
    deregister_resource(resource_arn)
    deregister_resource(resource_arn, params::Dict{String,<:Any})

Deregisters the resource as managed by the Data Catalog. When you deregister a path, Lake
Formation removes the path from the inline policy attached to your service-linked role.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource that you want to
  deregister.

"""
deregister_resource(ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("DeregisterResource", Dict{String, Any}("ResourceArn"=>ResourceArn); aws_config=aws_config)
deregister_resource(ResourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("DeregisterResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn), params)); aws_config=aws_config)

"""
    describe_resource(resource_arn)
    describe_resource(resource_arn, params::Dict{String,<:Any})

Retrieves the current data access role for the given resource registered in AWS Lake
Formation.

# Arguments
- `resource_arn`: The resource ARN.

"""
describe_resource(ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("DescribeResource", Dict{String, Any}("ResourceArn"=>ResourceArn); aws_config=aws_config)
describe_resource(ResourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("DescribeResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn), params)); aws_config=aws_config)

"""
    get_data_lake_settings()
    get_data_lake_settings(params::Dict{String,<:Any})

Retrieves the list of the data lake administrators of a Lake Formation-managed data lake.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
"""
get_data_lake_settings(; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("GetDataLakeSettings"; aws_config=aws_config)
get_data_lake_settings(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("GetDataLakeSettings", params; aws_config=aws_config)

"""
    get_effective_permissions_for_path(resource_arn)
    get_effective_permissions_for_path(resource_arn, params::Dict{String,<:Any})

Returns the Lake Formation permissions for a specified table or database resource located
at a path in Amazon S3. GetEffectivePermissionsForPath will not return databases and tables
if the catalog is encrypted.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource for which you want to get
  permissions.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
- `"MaxResults"`: The maximum number of results to return.
- `"NextToken"`: A continuation token, if this is not the first call to retrieve this list.
"""
get_effective_permissions_for_path(ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("GetEffectivePermissionsForPath", Dict{String, Any}("ResourceArn"=>ResourceArn); aws_config=aws_config)
get_effective_permissions_for_path(ResourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("GetEffectivePermissionsForPath", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn), params)); aws_config=aws_config)

"""
    grant_permissions(permissions, principal, resource)
    grant_permissions(permissions, principal, resource, params::Dict{String,<:Any})

Grants permissions to the principal to access metadata in the Data Catalog and data
organized in underlying data storage such as Amazon S3. For information about permissions,
see Security and Access Control to Metadata and Data.

# Arguments
- `permissions`: The permissions granted to the principal on the resource. AWS Lake
  Formation defines privileges to grant and revoke access to metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3. AWS Lake Formation requires
  that each principal be authorized to perform a specific task on AWS Lake Formation
  resources.
- `principal`: The principal to be granted the permissions on the resource. Supported
  principals are IAM users or IAM roles, and they are defined by their principal type and
  their ARN. Note that if you define a resource with a particular ARN, then later delete, and
  recreate a resource with that same ARN, the resource maintains the permissions already
  granted.
- `resource`: The resource to which permissions are to be granted. Resources in AWS Lake
  Formation are the Data Catalog, databases, and tables.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
- `"PermissionsWithGrantOption"`: Indicates a list of the granted permissions that the
  principal may pass to other users. These permissions may only be a subset of the
  permissions granted in the Privileges.
"""
grant_permissions(Permissions, Principal, Resource; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("GrantPermissions", Dict{String, Any}("Permissions"=>Permissions, "Principal"=>Principal, "Resource"=>Resource); aws_config=aws_config)
grant_permissions(Permissions, Principal, Resource, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("GrantPermissions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Permissions"=>Permissions, "Principal"=>Principal, "Resource"=>Resource), params)); aws_config=aws_config)

"""
    list_permissions()
    list_permissions(params::Dict{String,<:Any})

Returns a list of the principal permissions on the resource, filtered by the permissions of
the caller. For example, if you are granted an ALTER permission, you are able to see only
the principal permissions for ALTER. This operation returns only those permissions that
have been explicitly granted. For information about permissions, see Security and Access
Control to Metadata and Data.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
- `"MaxResults"`: The maximum number of results to return.
- `"NextToken"`: A continuation token, if this is not the first call to retrieve this list.
- `"Principal"`: Specifies a principal to filter the permissions returned.
- `"Resource"`: A resource where you will get a list of the principal permissions. This
  operation does not support getting privileges on a table with columns. Instead, call this
  operation on the table, and the operation returns the table and the table w columns.
- `"ResourceType"`: Specifies a resource type to filter the permissions returned.
"""
list_permissions(; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("ListPermissions"; aws_config=aws_config)
list_permissions(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("ListPermissions", params; aws_config=aws_config)

"""
    list_resources()
    list_resources(params::Dict{String,<:Any})

Lists the resources registered to be managed by the Data Catalog.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"FilterConditionList"`: Any applicable row-level and/or column-level filtering
  conditions for the resources.
- `"MaxResults"`: The maximum number of resource results.
- `"NextToken"`: A continuation token, if this is not the first call to retrieve these
  resources.
"""
list_resources(; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("ListResources"; aws_config=aws_config)
list_resources(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("ListResources", params; aws_config=aws_config)

"""
    put_data_lake_settings(data_lake_settings)
    put_data_lake_settings(data_lake_settings, params::Dict{String,<:Any})

Sets the list of data lake administrators who have admin privileges on all resources
managed by Lake Formation. For more information on admin privileges, see Granting Lake
Formation Permissions. This API replaces the current list of data lake admins with the new
list being passed. To add an admin, fetch the current list and add the new admin to that
list and pass that list in this API.

# Arguments
- `data_lake_settings`: A structure representing a list of AWS Lake Formation principals
  designated as data lake administrators.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
"""
put_data_lake_settings(DataLakeSettings; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("PutDataLakeSettings", Dict{String, Any}("DataLakeSettings"=>DataLakeSettings); aws_config=aws_config)
put_data_lake_settings(DataLakeSettings, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("PutDataLakeSettings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DataLakeSettings"=>DataLakeSettings), params)); aws_config=aws_config)

"""
    register_resource(resource_arn)
    register_resource(resource_arn, params::Dict{String,<:Any})

Registers the resource as managed by the Data Catalog. To add or update data, Lake
Formation needs read/write access to the chosen Amazon S3 path. Choose a role that you know
has permission to do this, or choose the AWSServiceRoleForLakeFormationDataAccess
service-linked role. When you register the first Amazon S3 path, the service-linked role
and a new inline policy are created on your behalf. Lake Formation adds the first path to
the inline policy and attaches it to the service-linked role. When you register subsequent
paths, Lake Formation adds the path to the existing policy. The following request registers
a new location and gives AWS Lake Formation permission to use the service-linked role to
access that location.  ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true  If
UseServiceLinkedRole is not set to true, you must provide or set the RoleArn:
arn:aws:iam::12345:role/my-data-access-role

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource that you want to register.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"RoleArn"`: The identifier for the role that registers the resource.
- `"UseServiceLinkedRole"`: Designates an AWS Identity and Access Management (IAM)
  service-linked role by registering this role with the Data Catalog. A service-linked role
  is a unique type of IAM role that is linked directly to Lake Formation. For more
  information, see Using Service-Linked Roles for Lake Formation.
"""
register_resource(ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("RegisterResource", Dict{String, Any}("ResourceArn"=>ResourceArn); aws_config=aws_config)
register_resource(ResourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("RegisterResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn), params)); aws_config=aws_config)

"""
    revoke_permissions(permissions, principal, resource)
    revoke_permissions(permissions, principal, resource, params::Dict{String,<:Any})

Revokes permissions to the principal to access metadata in the Data Catalog and data
organized in underlying data storage such as Amazon S3.

# Arguments
- `permissions`: The permissions revoked to the principal on the resource. For information
  about permissions, see Security and Access Control to Metadata and Data.
- `principal`: The principal to be revoked permissions on the resource.
- `resource`: The resource to which permissions are to be revoked.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CatalogId"`: The identifier for the Data Catalog. By default, the account ID. The Data
  Catalog is the persistent metadata store. It contains database definitions, table
  definitions, and other control information to manage your AWS Lake Formation environment.
- `"PermissionsWithGrantOption"`: Indicates a list of permissions for which to revoke the
  grant option allowing the principal to pass permissions to other principals.
"""
revoke_permissions(Permissions, Principal, Resource; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("RevokePermissions", Dict{String, Any}("Permissions"=>Permissions, "Principal"=>Principal, "Resource"=>Resource); aws_config=aws_config)
revoke_permissions(Permissions, Principal, Resource, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("RevokePermissions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Permissions"=>Permissions, "Principal"=>Principal, "Resource"=>Resource), params)); aws_config=aws_config)

"""
    update_resource(resource_arn, role_arn)
    update_resource(resource_arn, role_arn, params::Dict{String,<:Any})

Updates the data access role used for vending access to the given (registered) resource in
AWS Lake Formation.

# Arguments
- `resource_arn`: The resource ARN.
- `role_arn`: The new role to use for the given resource registered in AWS Lake Formation.

"""
update_resource(ResourceArn, RoleArn; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("UpdateResource", Dict{String, Any}("ResourceArn"=>ResourceArn, "RoleArn"=>RoleArn); aws_config=aws_config)
update_resource(ResourceArn, RoleArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = lakeformation("UpdateResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceArn"=>ResourceArn, "RoleArn"=>RoleArn), params)); aws_config=aws_config)