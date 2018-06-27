# NEW_neme-s.org - a complete ground-up rebuild of neme-s.org

## neme-s.org

 **neme-s.org** is the club website for the New England Model Engineering Society. For many years, this site was maintained by hand, with handwritten HTML. In order to make the site easier to maintain and update in the future, we're rebuilding it.

## Jekyll and Bootstrap 4

 In order to manage a coherent look and feel, and enable very simple updates to the site, we're using [Jekyll](https://jekyllrb.com/) - the static site generator.
 + Jekyll generates static sites from very simple [Markdown](https://jekyllrb.com/) files.
 + More advanced usage can include the [Liquid template language](https://github.com/Shopify/liquid/wiki).
 + Regular HTML is also supported.
 + Meaningful data can be stored and used as CSV, JSON, and YAML

 Styling and visual components are provided using [Bootstrap 4](https://getbootstrap.com/docs/4.0/getting-started/introduction/)
 + Bootstrap provides CSS and JavaScript components which create a coherent visual style.
 + Advanced design such as Bootstrap's Carousel component.
 + Responsive design elements to ensure the site is well-rendered on all devices.

## Data-Driven NEMES Features

 The new site tries to make updating data very easy.

 + `_data/contacts.csv` is used to store current officers and is easy to update.
 + `_data/meeting.json` describes the next meeting. Updating this file changes the Home Page.
 + `_data/home_carousel.json` chooses which and how many slides are in the carousel on the Home Page.
 + `_data/nav.json` describes the top and side navigation bars; the names, links, and so on.

## Jekyll Posts

 Posts for the new site are very easy to write, with Jekyll and Bootstrap ensuring all of the links are correctly populated and all of the styling matches the rest of the site automatically.
 Be sure to look at the Jekyll documentation to understand how to write a post.
