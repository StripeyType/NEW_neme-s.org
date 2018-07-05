# plugin to add lists of paths to the `page` object in Liquid templates

module Jekyll
  class StaticGalleryGenerator < Generator
    def generate(site)
      site.posts.docs.each do |post|
        if post.data['static-gallery']
          if post.data['static-gallery']['path'].end_with?("/")
            path_glob = post.data['static-gallery']['path'] + "*"
          else
            path_glob = post.data['static-gallery']['path'] + "/*"
          end
          post.data['static-gallery']['items'] = []
          Dir[path_glob].each {|item| post.data['static-gallery']['items'].push(item)}
          if post.data['static-gallery']['items'].empty?
            post.data['static-gallery']['items'] = nil
          end
        end
      end
    end
  end
end
