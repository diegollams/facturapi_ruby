require 'net/http'
require 'uri'
require 'json'

module FacturapiRuby
  class FacturapiRubyError < StandardError
    def initialize(data)
      @data = data
    end

    attr_reader :data
  end

  module HttpClient

    class << self
      BASE_URL = 'https://www.facturapi.io'

      def get_file(options)
        response = request(Net::HTTP::Get, options)

        file = Tempfile.open(['my', options[:file_ext]])
        file.binmode
        file.write(response.body)

        if response.code.start_with? '20'
          file
        else
          raise FacturapiRubyError.new(JSON.parse(response.body))
        end
      end

      def get(options)
        response = request(Net::HTTP::Get, options)

        json_response(response)
      end

      def post(options)
        response = request(Net::HTTP::Post, options) do |request|
          request.body = options[:api_options].to_json
        end
        
        json_response(response)
      end

      def put(options)
        response = request(Net::HTTP::Put, options) do |request|
          request.body = options[:api_options].to_json
        end

        json_response(response)
      end

      def delete(options)
        response = request(Net::HTTP::Delete, options)

        json_response(response)
      end

      private

      def json_response(response)
        if response.code.start_with? '20'
          JSON.parse(response.body)
        else
          raise FacturapiRubyError.new(JSON.parse(response.body))
        end
      end

      def request(request_method, options)
        uri = URI(BASE_URL + options[:endpoint])

        http         = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true

        request      = request_method.new(uri.request_uri, 'Content-Type' => 'application/json')
        # request.body = options[:api_options].to_json

        yield(request) if block_given?

        request.basic_auth(FacturapiRuby.configuration.api_key, '')

        http.set_debug_output($stdout) if FacturapiRuby.configuration.debug_output

        http.request(request)
      end
    end
  end
end
