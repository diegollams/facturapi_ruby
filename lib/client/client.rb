require 'net/http'
require 'uri'
require 'json'

module Client

  class << self
    BASE_URL = 'https://www.facturapi.io/v1'
    def headers
      authorization_key = "Basic #{FacturapiRuby.configuration.api_key}:"
      header = {'Content-Type': 'text/json', 'Authorization': authorization_key}
    end

    def post(options)
      uri = URI(BASE_URL + options[:endpoint])

      http         = Net::HTTP.new(uri.host, uri.port)
      request      = Net::HTTP::Post.new(uri.request_uri, headers)
      request.body = options[:api_options]

      http.request(request)
    end
  end

end