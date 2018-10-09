module Jekyll
  class SplashTag < Liquid::Block

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
        code = super.to_s.gsub(%r{\A(\n|\r)+|(\n|\r)+\z}, "")
        value = `SplashHTMLGen '#{code}'`
        v = "<pre><code>#{value}</code></pre>"
    end
  end
end

Liquid::Template.register_tag('splash', Jekyll::SplashTag)
