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
     field("#parent-fieldname-tipo")
    end

    def justification
      field("#parent-fieldname-justificativa")
    end

    def price
      field("#parent-fieldname-custo_estimado_por_lote")
    end

    private

    def field(selector)
      @data.search(selector).to_clean_text
    end
  end
end
