# TimeSpec

用于测试时固定时间

## Installation

Add this line to your application's Gemfile:

    gem 'time_spec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install time_spec

## Usage

RSpec.configure do |config|
	#  Time spec
	config.before(:each) do
		TimeSpec.base_time = Time.zone.local(2008, 8, 8, 8, 8, 8)
		Time.stub(:now).and_return(TimeSpec.base_time)
	end
end



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
