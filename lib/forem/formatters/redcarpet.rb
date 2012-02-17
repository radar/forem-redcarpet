require 'redcarpet'
require 'pygments'
# AJF: The following line is new in this fork to fix an exception from line on line 22 of this file
require 'nokogiri'

module Forem
  module Formatters
    class Redcarpet
      def self.format(text)
        options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
        renderer = ::Redcarpet::Markdown.new(::Redcarpet::Render::HTML, :fenced_code_blocks => true)
        syntax_highlight(renderer.render(text)).html_safe
      end

      def self.blockquote(text)
        text.split("\n").map do |line|
          "> " + line
        end.join("\n")
      end

      def self.syntax_highlight(html)
        doc = Nokogiri::HTML::DocumentFragment.parse(html.to_s)
        doc.css("pre code[@class]").each do |code|
          code.replace Pygments.highlight(code.text.rstrip, :lexer => code[:class], :class => "forem_highlight")
        end
        doc.to_s
      end
    end
  end
end
