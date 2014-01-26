require "active_decimal/version"

module ActiveDecimal
  BIG_NUMBERS = {
    :thousand          => 10**3,
    :million           => 10**6,
    :billion           => 10**9,
    :trillion          => 10**12,
    :quadrillion       => 10**15,
    :quintillion       => 10**18,
    :sextillion        => 10**21,
    :septillion        => 10**24,
    :octillion         => 10**27,
    :nonillion         => 10**30,
    :decillion         => 10**33,
    :undecillion       => 10**36,
    :duodecillion      => 10**39,
    :tredecillion      => 10**42,
    :quattuordecillion => 10**45,
    :quindecillion     => 10**48,
    :quinquadecillion  => 10**48,
    :sexdecillion      => 10**51,
    :sedecillion       => 10**51,
    :septendecillion   => 10**54,
    :octodecillion     => 10**57,
    :novemdecillion    => 10**60,
    :novendecillion    => 10**60,
    :vigintillion      => 10**63,
    :centillion        => 10**303,
    :googol            => 10**100,
    :dozen             => 12,
    :bakers_dozen      => 13,
    :gross             => 144,
    :small_gross       => 120,
    :great_gross       => 1728
  }

  SINGULAR_SMALL_NUMBERS = {
    :half        => 2,
    :third       => 3,
    :quarter     => 4,
    :fourth      => 4,
    :fifth       => 5,
    :sixth       => 6,
    :seventh     => 7,
    :eighth      => 8,
    :ninth       => 9,
    :tenth       => 10,
    :eleventh    => 11,
    :twelth      => 12,
    :thirteen    => 13,
    :fourteenth  => 14,
    :fifteenth   => 15,
    :sixteenth   => 16,
    :seventeenth => 17,
    :eighteenth  => 18,
    :nineteenth  => 19,
    :twentieth   => 20,
    :thirtieth   => 30,
    :fourtieth   => 40,
    :fiftieth    => 50,
    :sixtieth    => 60,
    :seventieth  => 70,
    :eightieth   => 80,
    :ninetieth   => 90,
    :hundredth   => 100,
  }

  PLURAL_SMALL_NUMBERS = {
    :halves       => 2,
    :thirds       => 3,
    :quarters     => 4,
    :fourths      => 4,
    :fifths       => 5,
    :sixths       => 6,
    :sevenths     => 7,
    :eighths      => 8,
    :ninths       => 9,
    :tenths       => 10,
    :elevenths    => 11,
    :twelths      => 12,
    :thirteens    => 13,
    :fourteenths  => 14,
    :fifteenths   => 15,
    :sixteenths   => 16,
    :seventeenths => 17,
    :eighteenths  => 18,
    :nineteenths  => 19,
    :twentieths   => 20,
    :thirtieths   => 30,
    :fourtieths   => 40,
    :fiftieths    => 50,
    :sixtieths    => 60,
    :seventieths  => 70,
    :eightieths   => 80,
    :ninetieths   => 90,
    :hundredths   => 100,
  }

  class BadGrammar < StandardError
  end
end

class Numeric
  def method_missing(meth, *args, &block)
    if ActiveDecimal::BIG_NUMBERS[meth]
      val = self * ActiveDecimal::BIG_NUMBERS[meth]
      return val.to_i == val ? val.to_i : val
    end

    if ActiveDecimal::SINGULAR_SMALL_NUMBERS[meth]
      raise ActiveDecimal::BadGrammar unless self <= 1 and self > 0
      return Rational(self, ActiveDecimal::SINGULAR_SMALL_NUMBERS[meth])
    end

    if ActiveDecimal::PLURAL_SMALL_NUMBERS[meth]
      raise ActiveDecimal::BadGrammar unless self > 1 or self <= 0
      return Rational(self, ActiveDecimal::PLURAL_SMALL_NUMBERS[meth])
    end

    super
  end
end
