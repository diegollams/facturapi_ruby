require 'facturapi_ruby/http_client'

module FacturapiRuby
  module Files
    class << self
      def pdf(options)
        HttpClient.get_file(
          endpoint: "/v1/invoices/#{options[:invoice_id]}/pdf",
          file_ext: '.pdf'
        )
      end

      def xml(options)
        HttpClient.get_file(
          endpoint: "/v1/invoices/#{options[:invoice_id]}/xml",
          file_ext: '.xml'
        )
      end
    end
  end
end
