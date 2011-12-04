require 'test/unit'
require 'test_helper'
require 'copa'

class ActionTest < Test::Unit::TestCase
  def setup
    @action = Copa::Action.new("ola-mundo")
  end

  def test_action_url
    assert_equal "http://www.copatransparente.gov.br/portalCopa/acoes/ola-mundo", @action.url
  end

  def test_type
    assert_equal "Obras / Serviços de engenharia", @action.type
  end

  end
end

