require 'pry'
require "active_decimal/version"

class Numeric
  def method_missing(meth, *args, &block)
    big_numbers = {
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
    }

    return self * big_numbers[meth] if big_numbers[meth]

    super
  end
end
