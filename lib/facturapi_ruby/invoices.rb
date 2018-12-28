require 'http/client'

module FacturapiRuby
  module Invoices
    def create(options)
      BaseHttp.post(
        endpoint:    '/invoices',
        api_options: options
      )
    end
  end
end