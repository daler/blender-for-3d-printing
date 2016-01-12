.. _the_interface:

Interface
=========

Blender is designed for efficiency and usability rather than for learning, so
it can have a steep learning curve. This section incrementally walks through
the basics of the interface and manipulating 3D objects.

.. toctree::
    :maxdepth: 1

    navigation.rst
    selection.rst
    3d-cursor.rst
    spacebar.rst
    transforms.rst
    cheatsheet-interface.rst


After starting Blender and clicking to dismiss the splash screen, we see this
default interface:

.. figure:: /images/start.png
   :align: center

Here's an annotated version of the default layout:

.. figure:: /images/annotated-layout.png

   Blender's default layout


Info
    Standard menus like :menuselection:`File --> Save`


3D View
    Most of our work will happen in here. This is where objects are created and manipulated.

Tool Shelf
    Contains recently-used tools and context-dependent options.

Outliner
    Used for complex scenes; we can ignore for now.

Properties
    Many settings can be found among these panels

Animation timeline
    Used for animation; we can ignore for now.


To make learning a little easier, we're going to make some tweaks to the user
interface.

Go to :menuselection:`File --> User Preferences` and click on the
:menuselection:`Interface` tab. Click the checkboxes for `Auto Depth` and
`Rotate Around Selection`. These will make manipulating the 3D View more
straightforward.

.. figure:: /images/user-prefs-interface.png

    Make sure `Auto Depth` and `Rotate Around Selection` are checked in the
    middle column.

.. seealso::


    The Blender manual on the `Interface
    <https://www.blender.org/manual/interface/index.html#interface>`_ has
    details about sections of the interface.

