require 'facturapi_ruby/http_client'

module FacturapiRuby
  module V2
    module Receipts
      class << self

        def get(receipt_id)
          HttpClient.post(
            endpoint:    "/v2/receipts/#{receipt_id}"
          )
        end

        def create(options)
          HttpClient.post(
            endpoint:    '/v2/receipts',
            api_options: options
          )
        end

        def invoice(receipt_id, options={})
          HttpClient.post(
            endpoint:    "/v2/receipts/#{receipt_id}/invoice",
            api_options: options
          )
        end
      end
    end
  end
end
