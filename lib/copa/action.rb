module Copa
  class Action
    def initialize(id, request_client = ::RestClient)
      @id = id
      @data = ::Nokogiri::HTML request_client.get(url) # TODO: test it
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

    def state
      field "#parent-fieldname-uf"
    end

    def city
#      field "#parent-fieldname-municipio"
    end

    private

    def field(selector)
      @data.search(selector).to_clean_text
    end
  end
end
