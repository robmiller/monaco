# Monaco

Monaco is a really small library for running [Monte Carlo
experiments](https://en.wikipedia.org/wiki/Monte_Carlo_method).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'monaco'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install monaco

## Usage

Simulations accept two things: the number of trials to run, and the
block to execute in each trial. The block should return true if an event
has occurred, and false if it hasn’t.

In this example we simulate throwing five dice, and check for the event
that any three dice show the same value:

	simulation = Monaco::Simulation.new(trials: 100_000) do
		dice = 5.times.map { rand(1..6) }
		dice.any? { |d| dice.count(d) == 3 }
	end

	probability = simulation.run
	# => (19290/100000)

The `run` method returns a rational number, which can be converted to
a float using `to_f`:

	probability = simulation.run.to_f
	# => 0.1929

The default number of trials is 10,000. Trial blocks are passed the
number of the currently executing trial.

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests. You can also run `bin/console`
for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will create
a git tag for the version, push git commits and tags, and push the
`.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/robmiller/monaco. This project is intended to be
a safe, welcoming space for collaboration, and contributors are expected
to adhere to the [Contributor Covenant](contributor-covenant.org) code
of conduct.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).

