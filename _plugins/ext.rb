require 'jekyll/scholar'
require 'uri'

module MarkdownFilter
  class Href < BibTeX::Filter
    def apply(value)
      value.to_s.gsub(URI.regexp(['http','https','ftp'])) { |c| "<a href=\"#{$&}\">#{$&}</a>" }
    end
  end
end

module Jekyll
  class Scholar
    class Latex2 < BibTeX::Filter
      def apply(value)
        value.to_s.gsub(/\\enquote|\\emph|\\-/, "")
      end
    end
  end
end

module Jekyll
  class Scholar
    class Latex3 < BibTeX::Filter
      def apply(value)
        value.to_s.gsub(/\\hyp/, "-")
      end
    end
  end
end
