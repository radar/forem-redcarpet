require 'redcarpet'
require 'coderay'
require 'nokogiri'

module Forem
  module Formatters
    class Redcarpet
      def self.format(text)
        renderer = ::Redcarpet::Markdown.new(::Redcarpet::Render::HTML, :fenced_code_blocks => true)
        syntax_highlight(Forem.formatter.sanitize(renderer.render(text))).html_safe
      end

      def self.blockquote(text)
        text.split("\n").map do |line|
          "> " + line
        end.join("\n")
      end

      def self.syntax_highlight(html)
        doc = Nokogiri::HTML::DocumentFragment.parse(html.to_s)
        doc.css("pre[@class]", "code[@class]").each do |code|
          code.replace CodeRay.scan(code.text.rstrip, code[:class].to_sym).div
        end
        doc.to_s
      end

      # This postpones the sanitization until *after* the rendered has rendered all the text.
      def self.sanitize(text)
        text
      end
    end
  end
end
