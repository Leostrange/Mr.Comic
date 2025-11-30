# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Mr.Comic'
copyright = '2025, Mr.Comic Team'
author = 'Mr.Comic Team'
release = '1.0.0'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.todo',
    'javasphinx',
]

templates_path = ['_templates']
exclude_patterns = []

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']

# -- JavaSphinx configuration ------------------------------------------------
javadoc_url_map = {
    'android': ('https://developer.android.com/reference/', 'javadoc'),
    'androidx': ('https://developer.android.com/reference/androidx/', 'javadoc'),
    'java': ('https://docs.oracle.com/javase/8/docs/api/', 'javadoc'),
    'javax': ('https://docs.oracle.com/javase/8/docs/api/', 'javadoc'),
}

# -- Extension configuration -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#extension-configuration

# -- Options for todo extension ----------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/extensions/todo.html#configuration

todo_include_todos = True
