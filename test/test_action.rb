require 'test/unit'
require 'copa'

class ActionTest < Test::Unit::TestCase
  def setup
    @action = Copa::Action.new("abc")
  end

  def test_action_url
    assert_equal "http://www.copatransparente.gov.br/portalCopa/acoes/abc", @action.url
  end
end

