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
        value.to_s.gsub(/\\-/, "")
      end
    end
  end
end

module Jekyll
  class Scholar
    class Latex4 < BibTeX::Filter
      def apply(value)
           # Use of \g<1> pattern back-reference to allow for capturing nested {} groups.
          # The first (outermost) capture of $1 is used.
          value.to_s.gsub(/\\emph(\{(?:[^{}]|\g<1>)*\})/) {
            "<i>#{$1[1..-2]}</i>"
          }
      end
    end
  end
end

module Jekyll
  class Scholar
    class Latex5 < BibTeX::Filter
      def apply(value)
           # Use of \g<1> pattern back-reference to allow for capturing nested {} groups.
          # The first (outermost) capture of $1 is used.
          value.to_s.gsub(/\\enquote(\{(?:[^{}]|\g<1>)*\})/) {
            "&sbquo;#{$1[1..-2]}&lsquo;"
          }
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
