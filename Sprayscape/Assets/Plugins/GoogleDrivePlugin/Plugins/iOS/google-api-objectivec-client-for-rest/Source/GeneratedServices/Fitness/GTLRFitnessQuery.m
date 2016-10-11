// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Fitness (fitness/v1)
// Description:
//   Stores and accesses user data in the fitness store from apps on any
//   platform.
// Documentation:
//   https://developers.google.com/fit/rest/

#import "GTLRFitnessQuery.h"

#import "GTLRFitnessObjects.h"

@implementation GTLRFitnessQuery

@dynamic fields;

@end

@implementation GTLRFitnessQuery_UsersDatasetAggregate

@dynamic userId;

+ (instancetype)queryWithObject:(GTLRFitness_AggregateRequest *)object
                         userId:(NSString *)userId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"userId" ];
  NSString *pathURITemplate = @"{userId}/dataset:aggregate";
  GTLRFitnessQuery_UsersDatasetAggregate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.userId = userId;
  query.expectedObjectClass = [GTLRFitness_AggregateResponse class];
  query.loggingName = @"fitness.users.dataset.aggregate";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesCreate

@dynamic userId;

+ (instancetype)queryWithObject:(GTLRFitness_DataSource *)object
                         userId:(NSString *)userId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"userId" ];
  NSString *pathURITemplate = @"{userId}/dataSources";
  GTLRFitnessQuery_UsersDataSourcesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.userId = userId;
  query.expectedObjectClass = [GTLRFitness_DataSource class];
  query.loggingName = @"fitness.users.dataSources.create";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesDatasetsDelete

@dynamic currentTimeMillis, datasetId, dataSourceId, modifiedTimeMillis, userId;

+ (instancetype)queryWithUserId:(NSString *)userId
                   dataSourceId:(NSString *)dataSourceId
                      datasetId:(NSString *)datasetId {
  NSArray *pathParams = @[
    @"datasetId", @"dataSourceId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/dataSources/{dataSourceId}/datasets/{datasetId}";
  GTLRFitnessQuery_UsersDataSourcesDatasetsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.dataSourceId = dataSourceId;
  query.datasetId = datasetId;
  query.loggingName = @"fitness.users.dataSources.datasets.delete";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesDatasetsGet

@dynamic datasetId, dataSourceId, limit, pageToken, userId;

+ (instancetype)queryWithUserId:(NSString *)userId
                   dataSourceId:(NSString *)dataSourceId
                      datasetId:(NSString *)datasetId {
  NSArray *pathParams = @[
    @"datasetId", @"dataSourceId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/dataSources/{dataSourceId}/datasets/{datasetId}";
  GTLRFitnessQuery_UsersDataSourcesDatasetsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.dataSourceId = dataSourceId;
  query.datasetId = datasetId;
  query.expectedObjectClass = [GTLRFitness_Dataset class];
  query.loggingName = @"fitness.users.dataSources.datasets.get";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesDatasetsPatch

@dynamic currentTimeMillis, datasetId, dataSourceId, userId;

+ (instancetype)queryWithObject:(GTLRFitness_Dataset *)object
                         userId:(NSString *)userId
                   dataSourceId:(NSString *)dataSourceId
                      datasetId:(NSString *)datasetId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"datasetId", @"dataSourceId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/dataSources/{dataSourceId}/datasets/{datasetId}";
  GTLRFitnessQuery_UsersDataSourcesDatasetsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.userId = userId;
  query.dataSourceId = dataSourceId;
  query.datasetId = datasetId;
  query.expectedObjectClass = [GTLRFitness_Dataset class];
  query.loggingName = @"fitness.users.dataSources.datasets.patch";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesDelete

@dynamic dataSourceId, userId;

+ (instancetype)queryWithUserId:(NSString *)userId
                   dataSourceId:(NSString *)dataSourceId {
  NSArray *pathParams = @[
    @"dataSourceId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/dataSources/{dataSourceId}";
  GTLRFitnessQuery_UsersDataSourcesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.dataSourceId = dataSourceId;
  query.expectedObjectClass = [GTLRFitness_DataSource class];
  query.loggingName = @"fitness.users.dataSources.delete";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesGet

@dynamic dataSourceId, userId;

+ (instancetype)queryWithUserId:(NSString *)userId
                   dataSourceId:(NSString *)dataSourceId {
  NSArray *pathParams = @[
    @"dataSourceId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/dataSources/{dataSourceId}";
  GTLRFitnessQuery_UsersDataSourcesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.dataSourceId = dataSourceId;
  query.expectedObjectClass = [GTLRFitness_DataSource class];
  query.loggingName = @"fitness.users.dataSources.get";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesList

@dynamic dataTypeName, userId;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dataTypeName" : [NSString class]
  };
  return map;
}

+ (instancetype)queryWithUserId:(NSString *)userId {
  NSArray *pathParams = @[ @"userId" ];
  NSString *pathURITemplate = @"{userId}/dataSources";
  GTLRFitnessQuery_UsersDataSourcesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.expectedObjectClass = [GTLRFitness_ListDataSourcesResponse class];
  query.loggingName = @"fitness.users.dataSources.list";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesPatch

@dynamic dataSourceId, userId;

+ (instancetype)queryWithObject:(GTLRFitness_DataSource *)object
                         userId:(NSString *)userId
                   dataSourceId:(NSString *)dataSourceId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"dataSourceId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/dataSources/{dataSourceId}";
  GTLRFitnessQuery_UsersDataSourcesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.userId = userId;
  query.dataSourceId = dataSourceId;
  query.expectedObjectClass = [GTLRFitness_DataSource class];
  query.loggingName = @"fitness.users.dataSources.patch";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersDataSourcesUpdate

@dynamic dataSourceId, userId;

+ (instancetype)queryWithObject:(GTLRFitness_DataSource *)object
                         userId:(NSString *)userId
                   dataSourceId:(NSString *)dataSourceId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"dataSourceId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/dataSources/{dataSourceId}";
  GTLRFitnessQuery_UsersDataSourcesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.userId = userId;
  query.dataSourceId = dataSourceId;
  query.expectedObjectClass = [GTLRFitness_DataSource class];
  query.loggingName = @"fitness.users.dataSources.update";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersSessionsDelete

@dynamic currentTimeMillis, sessionId, userId;

+ (instancetype)queryWithUserId:(NSString *)userId
                      sessionId:(NSString *)sessionId {
  NSArray *pathParams = @[
    @"sessionId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/sessions/{sessionId}";
  GTLRFitnessQuery_UsersSessionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.sessionId = sessionId;
  query.loggingName = @"fitness.users.sessions.delete";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersSessionsList

@dynamic endTime, includeDeleted, pageToken, startTime, userId;

+ (instancetype)queryWithUserId:(NSString *)userId {
  NSArray *pathParams = @[ @"userId" ];
  NSString *pathURITemplate = @"{userId}/sessions";
  GTLRFitnessQuery_UsersSessionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.userId = userId;
  query.expectedObjectClass = [GTLRFitness_ListSessionsResponse class];
  query.loggingName = @"fitness.users.sessions.list";
  return query;
}

@end

@implementation GTLRFitnessQuery_UsersSessionsUpdate

@dynamic currentTimeMillis, sessionId, userId;

+ (instancetype)queryWithObject:(GTLRFitness_Session *)object
                         userId:(NSString *)userId
                      sessionId:(NSString *)sessionId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"sessionId", @"userId"
  ];
  NSString *pathURITemplate = @"{userId}/sessions/{sessionId}";
  GTLRFitnessQuery_UsersSessionsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.userId = userId;
  query.sessionId = sessionId;
  query.expectedObjectClass = [GTLRFitness_Session class];
  query.loggingName = @"fitness.users.sessions.update";
  return query;
}

@end