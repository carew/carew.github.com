---
title: Themes
layout: doc
navigation: main
---

Usage
-----

You can use themes (default layouts). Thanks to twig, you just
have to give the path to templates in the `config.yml` file

    #config.yml
    engine:
        theme_path: %dir%/vendor/carew/theme-bootstrap

Then you can customize all templates.

Create a new template in your `layouts` directory with the same
name as the original one.

You can also inherit original template with `extends`:

    # my_project/layouts/default.html.twig
    {% extends 'vendor/lyrixx/carew-theme-bootstrap/layouts/default.html.twig'%}

    {% block nav_right %}
        <ul class="nav pull-right">
            <li class="dropdown">
                ...
            </li>
        </ul>
    {% endblock %}

Existing Themes
---------------

* [twitter bootstrap](http://github.com/carew/theme-bootstrap/)
