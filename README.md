# Openproject Test

This gem provides support tasks for OpenProject plugin development. It primarily should allow the testing of multiple plugins against different versions of OP and should make your plugin able to run it's tests indepedent of the core.

## Installation

Add this line to your OpenProject Plugin Gemfile.

```
group :test do
  gem 'openproject_test'
end
```
And then execute:

```
bundle
```

Or install it yourself as:

```
gem install openproject_test
```

## Usage

The gem provides `op_test` as a commandline tool.

```
op_test install
```

will install a fresh copy of OpenProject as a spec dummy for your tests to run against.


## Contributing

1. Fork it ( https://github.com/floriank/openproject_test/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
