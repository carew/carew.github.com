---
title: Plugins
layout: doc
navigation: main
---

Existing Plugins
----------------

* [TOC Builder](https://github.com/carew/plugin-toc#readme): Build a Table Of Content
* [HighLighter](https://github.com/carew/plugin-highlight#readme): Highligh your code
* [Sami](https://github.com/carew/plugin-sami#readme): Build api doc from carew
* [Pagination](https://github.com/carew/plugin-pagination#readme): Add pagination to your index.html

Installation
------------

You can use as many plugin as you want.

1. Add the dependancy with composer.

1. Register theme in the `config.yml` file:

        #config.yml
        engine:
            extensions:
                - Carew\Plugin\Toc\TocExtension

That's it.

How to write a plugin
---------------------

The plugin must implements `ExtensionInterface`.

`Carew` will call `ExtensionInterface::register` and give itself
to the extension. So the plugin can alter everything.

The plugin can access to:

* The `carew` instance, of source
* The `container`, an instance of [pimple](http://pimple.sensiolabs.org/).
* The `event_dispatcher`, an instance of [Symfony EventDispatcher](https://github.com/symfony/EventDispatcher).

You can have a look to the `CoreExtension` for more information.

You have created a plugin
-------------------------

You have created a plugin and you want to share it ?
Write me an [email](mailto:lyrixx@lyrixx.info) and I will open a new repository on
[github/carew](https://github.com/carew) for you, or send me a
[pull request](https://github.com/carew/carew.github.com/edit/master/_carew/pages/plugins.md)
and add a new link.
