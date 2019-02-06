 module FacturapiRuby
  class Configuration
    attr_accessor :api_key, :debug_output

    def initialize
      @api_key = ''
      @debug_output = true
    end
  end
end
