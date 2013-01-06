---
title: Themes
layout: doc
navigation: main
---

Existing Themes
---------------

* [twitter bootstrap](http://github.com/carew/theme-bootstrap/)

Usage
-----

You can use themes (default layouts and/or assets).
Thanks to twig, you just have to give the path to themes folder
in the `config.yml` file

    yaml
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

    twig
    # my_project/layouts/default.html.twig
    {% extends 'vendor/carew/theme-bootstrap/layouts/index.html.twig'%}

    {% block nav_right %}
        <ul class="nav pull-right">
            <li class="dropdown">
                ...
            </li>
        </ul>
    {% endblock %}
