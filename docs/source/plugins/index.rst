Plugin Development Guide
======================

This section provides information for developers who want to create plugins for Mr.Comic.

.. toctree::
   :maxdepth: 2
   :caption: Plugin Development:

   getting_started
   api_reference
   best_practices
   examples

Introduction to Plugin Development
---------------------------------

Mr.Comic's plugin system allows developers to extend the application's functionality in various ways. Plugins can add new features, modify existing ones, or integrate with external services.

Plugin Structure
--------------

A Mr.Comic plugin is a JAR file containing:

* Java classes implementing the ``MrComicPlugin`` interface
* Resources (images, configuration files, etc.)
* A plugin.properties file with metadata

The plugin.properties file must contain the following information:

.. code-block:: properties

   name=My Plugin
   version=1.0.0
   author=Your Name
   description=A brief description of your plugin
   main-class=com.example.MyPlugin
   min-app-version=1
   target-app-version=1
   configurable=true

Plugin Lifecycle
--------------

1. **Installation**: The user installs the plugin through the Plugin Manager
2. **Loading**: The plugin is loaded by the PluginLoader
3. **Initialization**: The plugin's ``initialize()`` method is called
4. **Execution**: The plugin's functionality is available to the user
5. **Shutdown**: When the plugin is disabled, its ``shutdown()`` method is called
6. **Uninstallation**: The plugin is removed from the system

Security Considerations
---------------------

Plugins run in a sandbox environment with limited permissions. By default, plugins cannot:

* Access the file system outside their designated directories
* Connect to the network
* Execute arbitrary code

To request additional permissions, plugins must declare them in their manifest and the user must approve them during installation.
