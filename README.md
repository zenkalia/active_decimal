# ActiveDecimal - Word-number mapping for human readable numbers

When working with numbers there are a number of slippery slopes.  When dealing with large numbers, for example, you can accidentally put too many or too few zeros.  It's dangerous to be typing out novemdecillions by hand.  ActiveDecimal to the rescue.  Bill Gates isn't worth $`78200000000`, he's worth $`78.2.billion`.

In addition to large numbers, ActiveDecimal will also make small numbers easy to manage and human readable.  Rather than writing `0.125` or `1.0/8` (don't you hate adding `.0` to make something a float?) you can write `1.eighth`.  Or if you're talking about statistics in your DnD game, you could use `4.twentieths`.

## Installation

Add this line to your application's Gemfile:

    gem 'active_decimal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_decimal

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
