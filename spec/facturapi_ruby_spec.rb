RSpec.describe FacturapiRuby do
  it "has a version number" do
    expect(FacturapiRuby::VERSION).not_to be nil
  end

  it "configures api key" do
    FacturapiRuby.configure do |config|
      config.api_key = 'api_key'
    end
    expect(FacturapiRuby.configuration.api_key).to eq('api_key')
  end

  describe "invoices" do
    it "creates invoces" do 
      expect(FacturapiRuby::Invoices.create({})).to eq({})
    end
  end
end

