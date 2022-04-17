# frozen_string_literal: true

require 'facturapi_ruby/http_client'

module FacturapiRuby
  module V2
    module Files
      class << self
        def pdf(options)
          HttpClient.get_file(
            endpoint: "/v2/invoices/#{options[:invoice_id]}/pdf",
            file_ext: '.pdf'
          )
        end

        def xml(options)
          HttpClient.get_file(
            endpoint: "/v2/invoices/#{options[:invoice_id]}/xml",
            file_ext: '.xml'
          )
        end

        def zip(options)
          HttpClient.get_file(
            endpoint: "/v2/invoices/#{options[:invoice_id]}/zip",
            file_ext: '.zip'
          )
        end
      end
    end
  end
end
