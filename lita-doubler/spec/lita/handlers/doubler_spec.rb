require "spec_helper"

describe Lita::Handlers::Doubler, lita_handler: true do

  describe 'routing' do

    #allow some white space
    it {is_expected.to route('Lita double 2')}
    it {is_expected.to route('Lita double  22')}
  #  allow mixed casing
    it {is_exptect.to route('Lita doUble 4')}
  #  ignore numbers that don't look like integers
    it{is_expected.to_not route('Lita double two')}
    it{is_expected.to_not route('Lita double 1e4')}
  end
end
