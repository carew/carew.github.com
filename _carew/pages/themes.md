---
title: Themes
layout: doc2
navigation: main
---

Existing Themes
---------------

* [Twitter bootstrap](http://github.com/carew/theme-bootstrap/)

Installation
------------

You can use as many themes as you want.
Themes are default layouts and / or assets.

1. Add the dependancy with composer.

1. Register theme in the `config.yml` file:

        #config.yml
        engine:
            themes:
                - %dir%/vendor/carew/theme-bootstrap

Theme folder can contain `layouts` and `assets` folders.

Customization
-------------

If you want to replace a template, create a new template in your `layouts`
directory with the same name as the original one.

You can also inherit the original one with `extends`:

    # my_project/layouts/default.html.twig
    {% extends 'vendor/carew/theme-bootstrap/layouts/index.html.twig'%}

    {% block nav_right %}
        <ul class="nav pull-right">
            <li class="dropdown">
                ...
            </li>
        </ul>
    {% endblock %}

You have created a theme
------------------------

You have created a theme and you want to share it ?
Write me an [email](mailto:lyrixx@lyrixx.info) and I will open a new repository on
[github/carew](https://github.com/carew) for you, or send me a
[pull request](https://github.com/carew/carew.github.com/edit/master/_carew/pages/themes.md)
and add a new link.
