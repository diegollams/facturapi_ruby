# FacturapiRuby

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/facturapi_ruby`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'facturapi_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install facturapi_ruby

## Usage

### Configuration

```ruby
FacturapiRuby.configure do |config|
  config.api_key = 'api_key'
end
```

### Invoices

```ruby
begin
    ext_invoice = FacturapiRuby::Invoices.create(
                    customer:       customer_id,
                    items:          items,
                    payment_form:   payment_form,
                    payment_method: payment_method,
                    use:            use
                )
rescue FacturapiRuby::FacturapiRubyError => e
    puts e.data['message']
end
```

### Customers

```ruby
 begin
    customer = FacturapiRuby::Customers.create(
                legal_name: invoice_information.business_name,
                email:      invoice_information.email,
                tax_id:     invoice_information.rfc
            )
    client.update_column(:customer_id, customer['id'])
rescue FacturapiRuby::FacturapiRubyError => e
    e.data['message']
end
```

### Pdf

Remember to close tempfile

```ruby
pdf = FacturapiRuby::Files.pdf(invoice_id: invoice_id)
pdf.close
```

### Xml
Remember to close tempfile

```ruby
xml = FacturapiRuby::Files.xml(invoice_id: @invoice.ext_invoice_id)
xml.close
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/diegollams/facturapi_ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FacturapiRuby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/facturapi_ruby/blob/master/CODE_OF_CONDUCT.md).

## TODO

### Invoices
- Show
- List
- Delete
- Update
### Invoices
- Show
- List
- Delete
- Update
- Zip
### Product
- Create
- Show
- List
- Delete
- Update
