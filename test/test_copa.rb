require 'test/unit'
require 'copa'

class CopaTest < Test::Unit::TestCase
  def test_url_base
    assert_equal "http://www.copatransparente.gov.br/portalCopa", Copa::URL_BASE
  end
end
