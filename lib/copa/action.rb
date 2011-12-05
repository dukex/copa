require 'rubygems'
require 'nokogiri'

module Copa
  class Action
    def initialize(id)
      @id = id
      @data = ::Nokogiri::HTML RestClient.get(url)
    end

    def url
      "#{URL_BASE}/acoes/#{@id}"
    end

    def type
      @data.search("#parent-fieldname-tipo").text.gsub /^\s*|\s*$/, ''
    end

    def justification
      parser = ::Nokogiri::HTML RestClient.get(url)
      @data.search("#parent-fieldname-justificativa").text.gsub /^\s*|\s*$/, ''
    end

    def price
      @data.search("#parent-fieldname-custo_estimado_por_lote").text.gsub /^\s*|\s*$/, ''
    end
  end
end
