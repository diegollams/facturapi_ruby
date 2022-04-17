# frozen_string_literal: true

require 'facturapi_ruby/http_client'

module FacturapiRuby
  module V2
    module Invoices
      class << self
        def create(options)
          HttpClient.post(
            endpoint:    '/v2/invoices',
            api_options: options
          )
        end

        def cancel(invoice_id, motive, substitution=nil, options={})
          path = "/v2/invoices/#{invoice_id}?motive=#{motive}"
          path += "&substitution=#{substitution}" if substitution
          HttpClient.delete(
            endpoint:    path,
            api_options: options
          )
        end

        def get(invoice_id, options={})
          HttpClient.get(
            endpoint:    "/v2/invoices/#{invoice_id}",
            api_options: options
          )
        end
      end
    end
  end
end
