# ActiveDecimal - Word-number mapping for human readable code

[![Gem Version](https://badge.fury.io/rb/active_decimal.png)](http://badge.fury.io/rb/active_decimal) [![Build Status](https://travis-ci.org/zenkalia/active_decimal.png?branch=master)](https://travis-ci.org/zenkalia/active_decimal)

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

    2.0.0-p247 :001 > require 'active_decimal'
     => true
    2.0.0-p247 :002 > 4.thousand
     => 4000
    2.0.0-p247 :003 > 5.fifths
     => 1
    2.0.0-p247 :004 > 1.twentieth
     => (1/20)
    2.0.0-p247 :005 > 6.googol
     => 60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
    2.0.0-p247 :006 > 3.8.billion
     => 3800000000

You might even want to use it with money~

    2.0.0-p247 :010 >   require 'money'
     => true
    2.0.0-p247 :011 > bill = 78.1.billion.to_money
     => #<Money fractional:7810000000000 currency:USD>
    2.0.0-p247 :012 > salary = 1.million.to_money
     => #<Money fractional:100000000 currency:USD>

Though I like it better like this...

    2.0.0-p247 :016 >   class Numeric
    2.0.0-p247 :017?>     alias_method :dollars, :to_money
    2.0.0-p247 :018?>   end
     => Numeric
    2.0.0-p247 :019 >
    2.0.0-p247 :020 >   bill += 5.trillion.dollars
     => #<Money fractional:507810000000000 currency:USD>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
