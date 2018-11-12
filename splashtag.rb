require "shellwords"

module Jekyll
  class SplashTag < Liquid::Block

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
        input = super.to_s.gsub(%r{\A(\n|\r)+|(\n|\r)+\z}, "")
        command = Shellwords.join(['SplashHTMLGen', input])
        code = `#{command}`
        output = "<pre class=\"splash\"><code>#{code}</code></pre>"
    end
  end
end

Liquid::Template.register_tag('splash', Jekyll::SplashTag)
