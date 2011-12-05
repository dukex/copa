require 'test/unit'
require 'test_helper'
require 'copa'

class ActionTest < Test::Unit::TestCase
  def setup
    @action = Copa::Action.new("ola-mundo")
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
end

