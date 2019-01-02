require 'facturapi_ruby/http_client'

module FacturapiRuby
  module Files
    class << self
      def pdf(options)
        HttpClient.get_file(
          endpoint: "/invoices/#{options[:invoice_id]}/pdf",
        )
      end
    end
  end
end
