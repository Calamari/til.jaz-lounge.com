module Jekyll
  module URLBeautifier
    ##
    # Remove ending "index.html" or ".html" if present.
    def beautify_url(url)
      beautify_resource(beautify_directory(url))
    end

    ##
    # Remove ending "index.html" from urls.
    def beautify_directory(url)
      url = url[0..-11] if url =~ /index\.html$/
      url
    end

    ##
    # Remove ending ".html".
    def beautify_resource(url)
      url = url[0..-6] if url =~ /\.html$/
      url
    end
  end
end

Liquid::Template.register_filter(Jekyll::URLBeautifier)
