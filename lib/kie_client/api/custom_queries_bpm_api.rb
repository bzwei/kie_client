=begin
#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module KieClient
  class CustomQueriesBPMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Registers new query definition in the system with given queryName
    # 
    # @param query_name identifier of the query definition to be registered
    # @param body query definition represented as QueryDefinition
    # @param [Hash] opts the optional parameters
    # @return [QueryDefinition]
    def create_query_definition(query_name, body, opts = {})
      data, _status_code, _headers = create_query_definition_with_http_info(query_name, body, opts)
      return data
    end

    # Registers new query definition in the system with given queryName
    # 
    # @param query_name identifier of the query definition to be registered
    # @param body query definition represented as QueryDefinition
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryDefinition, Fixnum, Hash)>] QueryDefinition data, response status code and response headers
    def create_query_definition_with_http_info(query_name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.create_query_definition ..."
      end
      # verify the required parameter 'query_name' is set
      if @api_client.config.client_side_validation && query_name.nil?
        fail ArgumentError, "Missing the required parameter 'query_name' when calling CustomQueriesBPMApi.create_query_definition"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CustomQueriesBPMApi.create_query_definition"
      end
      # resource path
      local_var_path = "/server/queries/definitions/{queryName}".sub('{' + 'queryName' + '}', query_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'QueryDefinition')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#create_query_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes existing query definition from the system with given queryName
    # 
    # @param query_name identifier of the query definition to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def drop_query_definition(query_name, opts = {})
      drop_query_definition_with_http_info(query_name, opts)
      return nil
    end

    # Deletes existing query definition from the system with given queryName
    # 
    # @param query_name identifier of the query definition to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def drop_query_definition_with_http_info(query_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.drop_query_definition ..."
      end
      # verify the required parameter 'query_name' is set
      if @api_client.config.client_side_validation && query_name.nil?
        fail ArgumentError, "Missing the required parameter 'query_name' when calling CustomQueriesBPMApi.drop_query_definition"
      end
      # resource path
      local_var_path = "/server/queries/definitions/{queryName}".sub('{' + 'queryName' + '}', query_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#drop_query_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retruns all custom queries defined in the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first) (default to 0)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10 (default to 10)
    # @return [QueryDefinitions]
    def get_queries(opts = {})
      data, _status_code, _headers = get_queries_with_http_info(opts)
      return data
    end

    # Retruns all custom queries defined in the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
    # @return [Array<(QueryDefinitions, Fixnum, Hash)>] QueryDefinitions data, response status code and response headers
    def get_queries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.get_queries ..."
      end
      # resource path
      local_var_path = "/server/queries/definitions"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'QueryDefinitions')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#get_queries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves existing query definition from the system with given queryName
    # 
    # @param query_name identifier of the query definition to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [QueryDefinition]
    def get_query(query_name, opts = {})
      data, _status_code, _headers = get_query_with_http_info(query_name, opts)
      return data
    end

    # Retrieves existing query definition from the system with given queryName
    # 
    # @param query_name identifier of the query definition to be retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryDefinition, Fixnum, Hash)>] QueryDefinition data, response status code and response headers
    def get_query_with_http_info(query_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.get_query ..."
      end
      # verify the required parameter 'query_name' is set
      if @api_client.config.client_side_validation && query_name.nil?
        fail ArgumentError, "Missing the required parameter 'query_name' when calling CustomQueriesBPMApi.get_query"
      end
      # resource path
      local_var_path = "/server/queries/definitions/{queryName}".sub('{' + 'queryName' + '}', query_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'QueryDefinition')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#get_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replaces existing query definition or registers new if not exists in the system with given queryName
    # 
    # @param query_name identifier of the query definition to be replaced
    # @param body query definition represented as QueryDefinition
    # @param [Hash] opts the optional parameters
    # @return [QueryDefinition]
    def replace_query_definition(query_name, body, opts = {})
      data, _status_code, _headers = replace_query_definition_with_http_info(query_name, body, opts)
      return data
    end

    # Replaces existing query definition or registers new if not exists in the system with given queryName
    # 
    # @param query_name identifier of the query definition to be replaced
    # @param body query definition represented as QueryDefinition
    # @param [Hash] opts the optional parameters
    # @return [Array<(QueryDefinition, Fixnum, Hash)>] QueryDefinition data, response status code and response headers
    def replace_query_definition_with_http_info(query_name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.replace_query_definition ..."
      end
      # verify the required parameter 'query_name' is set
      if @api_client.config.client_side_validation && query_name.nil?
        fail ArgumentError, "Missing the required parameter 'query_name' when calling CustomQueriesBPMApi.replace_query_definition"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CustomQueriesBPMApi.replace_query_definition"
      end
      # resource path
      local_var_path = "/server/queries/definitions/{queryName}".sub('{' + 'queryName' + '}', query_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'QueryDefinition')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#replace_query_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper.
    # 
    # @param query_name identifier of the query definition to be used for query
    # @param mapper identifier of the query mapper to be used when transforming results
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_by optional sort order
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first) (default to 0)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10 (default to 10)
    # @return [Array<Object>]
    def run_query(query_name, mapper, opts = {})
      data, _status_code, _headers = run_query_with_http_info(query_name, mapper, opts)
      return data
    end

    # Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper.
    # 
    # @param query_name identifier of the query definition to be used for query
    # @param mapper identifier of the query mapper to be used when transforming results
    # @param [Hash] opts the optional parameters
    # @option opts [String] :order_by optional sort order
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def run_query_with_http_info(query_name, mapper, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.run_query ..."
      end
      # verify the required parameter 'query_name' is set
      if @api_client.config.client_side_validation && query_name.nil?
        fail ArgumentError, "Missing the required parameter 'query_name' when calling CustomQueriesBPMApi.run_query"
      end
      # verify the required parameter 'mapper' is set
      if @api_client.config.client_side_validation && mapper.nil?
        fail ArgumentError, "Missing the required parameter 'mapper' when calling CustomQueriesBPMApi.run_query"
      end
      # resource path
      local_var_path = "/server/queries/definitions/{queryName}/data".sub('{' + 'queryName' + '}', query_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'mapper'] = mapper
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#run_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder
    # 
    # @param query_name identifier of the query definition to be used for query
    # @param mapper identifier of the query mapper to be used when transforming results
    # @param [Hash] opts the optional parameters
    # @option opts [String] :builder optional identifier of the query builder to be used for query conditions
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first) (default to 0)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10 (default to 10)
    # @option opts [String] :body optional query filter specification represented as QueryFilterSpec
    # @return [Object]
    def run_query_filtered(query_name, mapper, opts = {})
      data, _status_code, _headers = run_query_filtered_with_http_info(query_name, mapper, opts)
      return data
    end

    # Queries using query definition identified by queryName. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder
    # 
    # @param query_name identifier of the query definition to be used for query
    # @param mapper identifier of the query mapper to be used when transforming results
    # @param [Hash] opts the optional parameters
    # @option opts [String] :builder optional identifier of the query builder to be used for query conditions
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
    # @option opts [String] :body optional query filter specification represented as QueryFilterSpec
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def run_query_filtered_with_http_info(query_name, mapper, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.run_query_filtered ..."
      end
      # verify the required parameter 'query_name' is set
      if @api_client.config.client_side_validation && query_name.nil?
        fail ArgumentError, "Missing the required parameter 'query_name' when calling CustomQueriesBPMApi.run_query_filtered"
      end
      # verify the required parameter 'mapper' is set
      if @api_client.config.client_side_validation && mapper.nil?
        fail ArgumentError, "Missing the required parameter 'mapper' when calling CustomQueriesBPMApi.run_query_filtered"
      end
      # resource path
      local_var_path = "/server/queries/definitions/{queryName}/filtered-data".sub('{' + 'queryName' + '}', query_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'mapper'] = mapper
      query_params[:'builder'] = opts[:'builder'] if !opts[:'builder'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#run_query_filtered\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Queries using query definition identified by queryName filtered by container. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder
    # 
    # @param id container id to filter queries
    # @param query_name identifier of the query definition to be used for query
    # @param mapper identifier of the query mapper to be used when transforming results
    # @param [Hash] opts the optional parameters
    # @option opts [String] :builder optional identifier of the query builder to be used for query conditions
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first) (default to 0)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10 (default to 10)
    # @option opts [String] :body optional query filter specification represented as QueryFilterSpec
    # @return [Object]
    def run_query_filtered_by_deployment_id(id, query_name, mapper, opts = {})
      data, _status_code, _headers = run_query_filtered_by_deployment_id_with_http_info(id, query_name, mapper, opts)
      return data
    end

    # Queries using query definition identified by queryName filtered by container. Maps the result to concrete objects based on provided mapper. Query is additional altered by the filter spec and/or builder
    # 
    # @param id container id to filter queries
    # @param query_name identifier of the query definition to be used for query
    # @param mapper identifier of the query mapper to be used when transforming results
    # @param [Hash] opts the optional parameters
    # @option opts [String] :builder optional identifier of the query builder to be used for query conditions
    # @option opts [Integer] :page optional pagination - at which page to start, defaults to 0 (meaning first)
    # @option opts [Integer] :page_size optional pagination - size of the result, defaults to 10
    # @option opts [String] :body optional query filter specification represented as QueryFilterSpec
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def run_query_filtered_by_deployment_id_with_http_info(id, query_name, mapper, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomQueriesBPMApi.run_query_filtered_by_deployment_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomQueriesBPMApi.run_query_filtered_by_deployment_id"
      end
      # verify the required parameter 'query_name' is set
      if @api_client.config.client_side_validation && query_name.nil?
        fail ArgumentError, "Missing the required parameter 'query_name' when calling CustomQueriesBPMApi.run_query_filtered_by_deployment_id"
      end
      # verify the required parameter 'mapper' is set
      if @api_client.config.client_side_validation && mapper.nil?
        fail ArgumentError, "Missing the required parameter 'mapper' when calling CustomQueriesBPMApi.run_query_filtered_by_deployment_id"
      end
      # resource path
      local_var_path = "/server/queries/definitions/containers/{id}/query/{queryName}/filtered-data".sub('{' + 'id' + '}', id.to_s).sub('{' + 'queryName' + '}', query_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'mapper'] = mapper
      query_params[:'builder'] = opts[:'builder'] if !opts[:'builder'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomQueriesBPMApi#run_query_filtered_by_deployment_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
