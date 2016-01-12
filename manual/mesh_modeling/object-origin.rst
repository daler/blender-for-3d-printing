Object origin
=============

The values in the Properties shelf refer to the position of the object origin.
A new primitive (cube, torus, etc) has its origin in the center, but as we add
change and add geometry, the origin does not change.

It is useful to change the objects origin to better position the object using
the Properties shelf or to re-center the origin at the object's new geometry.

.. admonition:: Exercise
    :class: exercise

    * To make coordinates easier to calculate, let's move the "L" so that the
      bottom is at Z = 0.

    * First, try setting the position to Z=0. Since the original origin was in
      the center of the cube, putting the origin at Z=0 means the bottom of the
      "L" dips below the Z=0 line.

    * In Edit Mode, select the edge at the bottom corner of the "L"

    * Snap cursor to selection

    * Set origin to cursor

    * Set postion to Z=0

    .. tip::

        It's also common to set the origin to the geometry, which puts it at
        the geometric center of the object.
