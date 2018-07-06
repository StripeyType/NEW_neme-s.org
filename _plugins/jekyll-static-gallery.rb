# plugin to add lists of paths to each item in site.posts

module Jekyll
  class StaticGalleryGenerator < Generator
    def generate(site)

      baseurl = Pathname.new(site.baseurl)
      pwd = Pathname.new(Dir.pwd)
      dest = Pathname.new(site.destination)
      if dest.relative?
        dest_abs = pwd + dest
      else
        dest_abs = dest
      end
      www_root = Pathname.new(dest_abs.to_s.chomp(baseurl.to_s))

      site.posts.docs.each do |post|
        if post.data['static-gallery']
          target = Pathname.new(post.data['static-gallery']['path'])
          if target.relative?
            target_abs = pwd + target
          else
            target_abs = target
          end
          if target_abs.end_with?("/")
            path_glob = location + "*"
          else
            path_glob = location + "/*"
          end
          post.data['static-gallery']['items'] = []
          Dir[path_glob].each |item| 
            item.sub!(www_root,'')
            post.data['static-gallery']['items'].push(item)
          end
          if post.data['static-gallery']['items'].empty?
            post.data['static-gallery']['items'] = nil
          end
        end
      end
    end
  end
end
