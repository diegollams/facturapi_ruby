require 'facturapi_ruby/http_client'

module FacturapiRuby
  module Invoices
    class << self
      def create(options)
        HttpClient.post(
          endpoint:    '/v1/invoices',
          api_options: options
        )
      end

      def cancel(invoice_id, options={})
        HttpClient.delete(
          endpoint:    "/v1/invoices/#{invoice_id}",
          api_options: options
        )
      end

      def get(invoice_id, options={})
        HttpClient.get(
          endpoint:    "/v1/invoices/#{invoice_id}",
          api_options: options
        )
      end
    end
  end
end
