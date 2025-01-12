# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: pi
using AWS.Compat
using AWS.UUIDs

"""
    describe_dimension_keys(end_time, group_by, identifier, metric, service_type, start_time)
    describe_dimension_keys(end_time, group_by, identifier, metric, service_type, start_time, params::Dict{String,<:Any})

For a specific time period, retrieve the top N dimension keys for a metric.  Each response
element returns a maximum of 500 bytes. For larger elements, such as SQL statements, only
the first 500 bytes are returned.

# Arguments
- `end_time`: The date and time specifying the end of the requested time series data. The
  value specified is exclusive, which means that data points less than (but not equal to)
  EndTime are returned. The value for EndTime must be later than the value for StartTime.
- `group_by`: A specification for how to aggregate the data points from a query result. You
  must specify a valid dimension group. Performance Insights returns all dimensions within
  this group, unless you provide the names of specific dimensions within this group. You can
  also request that Performance Insights return a limited number of values for a dimension.
- `identifier`: An immutable, AWS Region-unique identifier for a data source. Performance
  Insights gathers metrics from this data source. To use an Amazon RDS instance as a data
  source, you specify its DbiResourceId value. For example, specify
  db-FAIHNTYBKTGAUSUZQYPDS2GW4A
- `metric`: The name of a Performance Insights metric to be measured. Valid values for
  Metric are:    db.load.avg - a scaled representation of the number of active sessions for
  the database engine.    db.sampledload.avg - the raw number of active sessions for the
  database engine.   If the number of active sessions is less than an internal Performance
  Insights threshold, db.load.avg and db.sampledload.avg are the same value. If the number of
  active sessions is greater than the internal threshold, Performance Insights samples the
  active sessions, with db.load.avg showing the scaled values, db.sampledload.avg showing the
  raw values, and db.sampledload.avg less than db.load.avg. For most use cases, you can query
  db.load.avg only.
- `service_type`: The AWS service for which Performance Insights will return metrics. The
  only valid value for ServiceType is RDS.
- `start_time`: The date and time specifying the beginning of the requested time series
  data. You must specify a StartTime within the past 7 days. The value specified is
  inclusive, which means that data points equal to or greater than StartTime are returned.
  The value for StartTime must be earlier than the value for EndTime.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Filter"`: One or more filters to apply in the request. Restrictions:   Any number of
  filters by the same dimension, as specified in the GroupBy or Partition parameters.   A
  single filter for any other dimension in this dimension group.
- `"MaxResults"`: The maximum number of items to return in the response. If more items
  exist than the specified MaxRecords value, a pagination token is included in the response
  so that the remaining results can be retrieved.
- `"NextToken"`: An optional pagination token provided by a previous request. If this
  parameter is specified, the response includes only records beyond the token, up to the
  value specified by MaxRecords.
- `"PartitionBy"`: For each dimension specified in GroupBy, specify a secondary dimension
  to further subdivide the partition keys in the response.
- `"PeriodInSeconds"`: The granularity, in seconds, of the data points returned from
  Performance Insights. A period can be as short as one second, or as long as one day (86400
  seconds). Valid values are:    1 (one second)    60 (one minute)    300 (five minutes)
  3600 (one hour)    86400 (twenty-four hours)   If you don't specify PeriodInSeconds, then
  Performance Insights chooses a value for you, with a goal of returning roughly 100-200 data
  points in the response.
"""
describe_dimension_keys(EndTime, GroupBy, Identifier, Metric, ServiceType, StartTime; aws_config::AbstractAWSConfig=global_aws_config()) = pi("DescribeDimensionKeys", Dict{String, Any}("EndTime"=>EndTime, "GroupBy"=>GroupBy, "Identifier"=>Identifier, "Metric"=>Metric, "ServiceType"=>ServiceType, "StartTime"=>StartTime); aws_config=aws_config)
describe_dimension_keys(EndTime, GroupBy, Identifier, Metric, ServiceType, StartTime, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pi("DescribeDimensionKeys", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("EndTime"=>EndTime, "GroupBy"=>GroupBy, "Identifier"=>Identifier, "Metric"=>Metric, "ServiceType"=>ServiceType, "StartTime"=>StartTime), params)); aws_config=aws_config)

"""
    get_resource_metrics(end_time, identifier, metric_queries, service_type, start_time)
    get_resource_metrics(end_time, identifier, metric_queries, service_type, start_time, params::Dict{String,<:Any})

Retrieve Performance Insights metrics for a set of data sources, over a time period. You
can provide specific dimension groups and dimensions, and provide aggregation and filtering
criteria for each group.  Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are returned.

# Arguments
- `end_time`: The date and time specifying the end of the requested time series data. The
  value specified is exclusive - data points less than (but not equal to) EndTime will be
  returned. The value for EndTime must be later than the value for StartTime.
- `identifier`: An immutable, AWS Region-unique identifier for a data source. Performance
  Insights gathers metrics from this data source. To use a DB instance as a data source,
  specify its DbiResourceId value. For example, specify db-FAIHNTYBKTGAUSUZQYPDS2GW4A.
- `metric_queries`: An array of one or more queries to perform. Each query must specify a
  Performance Insights metric, and can optionally specify aggregation and filtering criteria.
- `service_type`: The AWS service for which Performance Insights returns metrics. The only
  valid value for ServiceType is RDS.
- `start_time`: The date and time specifying the beginning of the requested time series
  data. You can't specify a StartTime that's earlier than 7 days ago. The value specified is
  inclusive - data points equal to or greater than StartTime will be returned. The value for
  StartTime must be earlier than the value for EndTime.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of items to return in the response. If more items
  exist than the specified MaxRecords value, a pagination token is included in the response
  so that the remaining results can be retrieved.
- `"NextToken"`: An optional pagination token provided by a previous request. If this
  parameter is specified, the response includes only records beyond the token, up to the
  value specified by MaxRecords.
- `"PeriodInSeconds"`: The granularity, in seconds, of the data points returned from
  Performance Insights. A period can be as short as one second, or as long as one day (86400
  seconds). Valid values are:    1 (one second)    60 (one minute)    300 (five minutes)
  3600 (one hour)    86400 (twenty-four hours)   If you don't specify PeriodInSeconds, then
  Performance Insights will choose a value for you, with a goal of returning roughly 100-200
  data points in the response.
"""
get_resource_metrics(EndTime, Identifier, MetricQueries, ServiceType, StartTime; aws_config::AbstractAWSConfig=global_aws_config()) = pi("GetResourceMetrics", Dict{String, Any}("EndTime"=>EndTime, "Identifier"=>Identifier, "MetricQueries"=>MetricQueries, "ServiceType"=>ServiceType, "StartTime"=>StartTime); aws_config=aws_config)
get_resource_metrics(EndTime, Identifier, MetricQueries, ServiceType, StartTime, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = pi("GetResourceMetrics", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("EndTime"=>EndTime, "Identifier"=>Identifier, "MetricQueries"=>MetricQueries, "ServiceType"=>ServiceType, "StartTime"=>StartTime), params)); aws_config=aws_config)
