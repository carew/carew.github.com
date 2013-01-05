---
title: Carew
subtitle: The tiny website generator
layout: doc
---

What is it?
-----------

**Carew** is another static site / blog generator.
Write some blog post in [markdown](http://daringfireball.net/projects/markdown/),
carew will render them in html.

Installation
------------

The best way to start with carew, it's with the carew boilerplate:
You will need [composer](http://getcomposer.org).

    bash
    $ composer create-project carew/boilerplate my_website
    $ cd my_website
    $ vendor/bin/carew carew:build

That's all.

Documentation
-------------

### Structure

Now you can use the following directories:

* **assets:** All of these files will be copied to the web directory. You can
  add JavaScript, CSS and images in here.

* **layouts:** The layouts are used to render the pages. They have a
  `.html.twig` suffix. You can create base templates and have more specific
  ones that extend them using the `extends` tag. The layouts are renderer
  with [Twig](http://twig.sensiolabs.com)

  Layouts get access to following variables:

  * **currentPath**: The current path, from the root to the current page.
  * **document**: The current document to render.
    A document has `title`, `body` and any additional front-matter meta data
    in `metadatas`. `body` contains the body rendered as html. For more property,
    look at `Document` class.
  * **latest**: The latest post.
  * **navigation**: A listing of all navigation groups with theirs associated
     pages/posts collection. Useful in templates to build menu.
  * **pages**: A listing of all pages.
  * **posts**: A listing of all posts in reverse order of publication.
  * **relativeRoot**: The relative path from the current page to the root. Useful
   for referencing assets. Must always be followed by a slash, e.g.:
    `{{ relativeRoot }}/main.css`.
  * **tags**: A listing of all tags with theirs associated pages/posts collection.

  Filenames that follow the `index.$format.twig` naming scheme will get compiled
  to an `index.$format` file.
  **Note:** You can also create an `index.md` file in `pages` directory.

  Filenames that follow the `tags.$format.twig` naming scheme will get compiled
  to `tags/$tagName.$format` files. Templates have access to `tag` and `posts`
  variables. Here `posts` contains only Posts with current tag

* **posts:** Markdown files representing blog posts. Must be in the format of
  `YYYY-mm-dd-slug.md`, e.g. `2012-09-20-like-a-hacker.md`. Each one must begin
  with a YAML front matter. Here is a sample blog post:

        ---
        layout: post
        title: Blogging Like a Hacker
        ---

        # Blogging Like a Hacker

        * I’m bloggin yo!
        * ORLY?
        * YARLY!

  The following fields are defined:

  * **title:** Title of the blog post for display on the index.
  * **layout:** Layout to be used for rendering this post. Defaults to `default`,
    which means `layouts/default.html.twig` is rendered unless specified
    otherwise.

  You can add more fields and used them in the template, under the
  `document.metadata` variable.

* **pages:** Markdown files representing pages. Each one must begin
  with a YAML front matter. Here is a sample page:

        ---
        layout: page
        title: About
        ---

        # About me

        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

  You can add more fields and used them in the template, under the
  `document.metadata` variable.

* **api**: Markdown, or not, files. Each one will be rendered in `/api/filename.html`.

* **config.yml:** Yaml file with some configuration. All variables unde `site`
  will be sent to twig templates. Here is a sample:

        yaml
        site:
          author: Grégoire Pineau
          title:  Foo
          description: Bar

  And in the template:

        twig
        <html>
          <head>
            <title>{{ site.title }}</title>

### Usage

#### Build the site

In order to build the site, you can use the `carew:build` command:

    bash
    $ vendor/bin/carew carew:build

This will populate the `web` directory with a set of files that can be
deployed onto any static web server.

You can change input / ouput directory. Run:

    bash
    $ vendor/bin/carew help carew:build

#### Create a new blog post

Just run:

    bash
    $ vendor/bin/carew carew:generate:post [--date="..."] title

Demo
----

You want to see it in action? This doc uses carew ;)
Have a look to the [codebase](https://github.com/carew/carew.github.com/tree/master/_carew)

Want to contribute?
-------------------

Please, [fork me](https://github.com/carew/carew) and send me a pull request :)

Why another one?
----------------

I used to used [jekyll](https://github.com/mojombo/jekyll), but I was very unhappy with
the templating engine. And then, I discovered
[balrog](https://github.com/igorw/balrog/tree/8ed377d4eb1759926d8cfceb1796ed4234dceaef).
I was very cool but [igor](https://github.com/igorw/balrog/) took
another direction. So I fork it, and carew was born.

Why Carew?

Like to all other tatic site / blog generator ([jekyll](https://github.com/mojombo/jekyll),
[hyde](https://github.com/hyde/hyde), [pool](https://github.com/obensonne/poole),
[lanyon](https://github.com/spjwebster/lanyon)), its name come from the
*[Strange Case of Dr Jekyll and Mr Hyde](http://en.wikipedia.org/wiki/Strange_Case_of_Dr_Jekyll_and_Mr_Hyde)*
story.

Licence
-------

    Copyright (c) 2013 Grégoire Pineau

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is furnished
    to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
