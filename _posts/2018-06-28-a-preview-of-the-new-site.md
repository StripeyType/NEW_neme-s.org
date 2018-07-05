---
title: A Preview of the New NEMES Site
layout: post
summary: A note from the new Webmaster about this preview, and the work which remains to be done.
picture: "/img/banner.jpeg"
---

Here we are, but we're far from finished. This is a preview of what the structure and navigation will look like for the new NEMES site.

Most of this is all placeholders for what will come in the next few weeks and months. But it bears noting that the work which has gone into this so far lays important groundwork for the work yet to come - making everything easier from here on out. The aim is to do a sympathetic rebuild of the site, moving the old content, and trying to organize it better, without losing any NEMES content.

Some things may be relocated from links on the Home Page to Posts of their own which will be in the Archives. Other things which are currently downloads of Office files (.xslx or .docx for example) will be properly turned into web content. And some things which represent redundant content may be consolidated for clarity (links to Other Clubs, links to Member Sites, Club-related links, links to model-building and acessories... all of these are simply *links* and can be presented on a single, well-organized page.)

Some things which are not actual content on our site, but catalogs of links to other resources may go away: it doesn't make any sense at all to try to maintain a catalogue of every "Tubalcain" YouTube video, when Lyle posts a new one *at least* once a week. YouTube, as a Google product, has magnificent search capabilities for videos, and for specific content creators on YouTube, one can simply visit their Channel directly.

At the last meeting, I was able to show the barest skeleton of what I had finished so far. While this preview does not _look_ much different from that, the work has primarily been behind the scenes, making this new site work better.

For those of you interested in such things, this new site is built using a static site generation tool called [Jekyll](http://jekyllrb.com) and a web design framework called [Bootstrap](https://getbootstrap.com/docs/4.0/getting-started/introduction/).

Together, these Jekyll and Bootstrap work to meet a few design criteria I had decided upon early in the process. The new site should be:

 + Static
 + Simple to maintain
 + In revision control ([git](https://git-scm.com/))
 + Cohesive-looking

#### Static

There is some attraction to using a Content Management System such as [Wordpress](), but ultimately, the constant security patching and upgrade headaches make it a much bigger job than it otherwise ought to be. By using a static site generator though, we can enjoy the security and reliability of a static site with the ease of ensuring all links are correct and coherent that a tool can provide.

#### Simple to Maintain

Posts for the new site are most easily written using a plain text editor. Notepad or Vim or whatever else you might prefer. And you don't have to know HTML, CSS, or Javascript. Instead, just use [Markdown](https://en.wikipedia.org/wiki/Markdown)

The most frequently-updated parts of the site (the Gazette archive, the meeting information on the Home Page) are data-driven: add one line in a CSV file and Jekyll generates the link to the file. Modify one JSON stanza and the meeting information is updated. No more hunting through a very large HTML file for just the right place to add something. Instead, just write a new post, and it shows up on the Home Page, to be replaced when a newwer one comes along, and archived in perpetuity.

#### Revision Control with Git

Gone are the days of copying a file to a backup location before you edit it... or worse, forgetting to.

Instead, everything is in a git revision control repository. Git is the _de-facto_ standard for decentralized revision control, and one goal is to use git to help automate updating the site by using a "post-receive hook" to run the Jekyll build process.

#### Cohesive Design

I am not a Web Designer.

Rather than try to teach myself graphic design, or settle for a site that looks chaotic, I let Jekyll and Bootstrap do the heavy lifting for this.

## Next Steps

As you can see, there's not much here yet.

 + The NEMES Logo needs to be prominently-displayed on the Home Page.
 + The Home Page carousel of images needs to be populated with three to five good images.
 + The many, MANY posts from the existing site need to be ported over. It will probably work best if I write a tool to do this automatically.
 + The massive library of electronic books needs to be managed somehow.


 
