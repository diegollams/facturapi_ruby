require 'net/http'
require 'uri'
require 'json'

module FacturapiRuby
  module HttpClient

    class << self
      BASE_URL = 'https://www.facturapi.io/v1'

      def post(options)
        uri = URI(BASE_URL + options[:endpoint])

        http         = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true

        request      = Net::HTTP::Post.new(uri.request_uri, 'Content-Type' => 'application/json')
        request.body = options[:api_options].to_json
        request.basic_auth(FacturapiRuby.configuration.api_key, '')

        http.set_debug_output($stdout)

        response  = http.request(request)
        if response.code == '200'
          JSON.parse(response.body)
        else
          puts "=======> Error"
          JSON.parse(response.body)
        end
      end
    end
  end
end
