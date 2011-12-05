require 'rubygems'
require 'nokogiri'

module Nokogiri
  module XML
    class NodeSet
      def to_clean_text
        inner_text.gsub /^\s*|\s*$/, ''
      end
    end
  end
end

