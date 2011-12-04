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
  end
end
