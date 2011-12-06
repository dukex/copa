require 'test/unit'
require 'test_helper'
require 'copa'

class ActionTest < Test::Unit::TestCase
  def setup
    @action = Copa::Action.new("ola-mundo", URIMock)
  end

  def test_url
    assert_equal "http://www.copatransparente.gov.br/portalCopa/acoes/ola-mundo", @action.url
  end

  def test_type
    assert_equal "Obras / Serviços de engenharia", @action.type
  end

  def test_justification
    assert_equal "Construção de Arena multiuso, voltada à realização dos jogos da Copa das Confederações de 2013 e da Copa do Mundo de 2014, em atendimento aos requisitos técnicos do Caderno de Encargos da FIFA.", @action.justification
  end

  def test_price
    assert_equal "R$ 591.711.185,00", @action.price
  end

  def test_state
    assert_equal "BA", @action.state
  end

  def test_city
    assert_equal "Salvador", @action.city
  end

  def test_manager
    assert_equal "André Luiz Barros Cerejo", @action.manager
  end
end
