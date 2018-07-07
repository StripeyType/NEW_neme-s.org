# plugin to add lists of paths to each item in site.posts

module Jekyll
  class StaticGalleryGenerator < Generator
    def generate(site)

      baseurl = Pathname.new(site.baseurl)
      pwd = Pathname.new(Dir.pwd)

      dest = Pathname.new(site.dest)
      if dest.relative?
        dest_abs = pwd + dest
      else
        dest_abs = dest
      end
      www_root = Pathname.new(dest_abs.to_s.chomp(baseurl.to_s))

      site.posts.docs.each do |post|
        unless post.data['static-gallery'].nil?
          target = Pathname.new(post.data['static-gallery']['path'])
          if target.relative?
            target_abs = pwd + target
          else
            target_abs = target
          end
          post.data['static-gallery']['items'] = []
          target_abs.each_child do |i| 
            if i.ftype == "file"
              item = i.to_s.sub(www_root.to_s,'')
              post.data['static-gallery']['items'].push(item)
            end
          end
        end
      end
    end
  end
end
