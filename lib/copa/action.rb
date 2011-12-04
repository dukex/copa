require 'rubygems'
require 'nokogiri'

module Copa
  class Action
    def initialize(id)
      @id = id
    end

    def url
      "#{URL_BASE}/acoes/#{@id}"
    end

    def type
      parser = ::Nokogiri::HTML RestClient.get(url)
      parser.search("#parent-fieldname-tipo").text.gsub /^\s*|\s*$/, ''
    end

    def justification
      parser = ::Nokogiri::HTML RestClient.get(url)
      parser.search("#parent-fieldname-justificativa").text.gsub /^\s*|\s*$/, ''

    end
  end
end
