---
title: Plugins
layout: doc
navigation: main
---

Usage
-----

You can use as many plugin as you want. You just
have to register class to register in the `config.yml` file

    #config.yml
    engine:
        extensions:
            - Carew\Plugin\Toc\TocExtension

That's it.

Existing Plugins
----------------

* [toc builder](https://github.com/carew/plugin-toc)

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

