Object origin
=============

The values in the Properties shelf refer to the position of the object origin.
A new primitive (cube, torus, etc) has its origin in the center, but as we add
change and add geometry, the origin does not change.

It is useful to change the objects origin to better position the object using
the Properties shelf or to re-center the origin at the object's new geometry.

If you need to catch up, you may want to start by downloading this .blend file:
:download:`L.blend </images/L.blend>`.

.. admonition:: Exercise
    :class: exercise

    * To make coordinates easier to calculate, let's move the "L" so that the
      bottom is at Z = 0.

    * First, try setting the position to Z=0. Since the original origin was in
      the center of the cube, putting the origin at Z=0 means the bottom of the
      "L" dips below the Z=0 line.

    .. figure:: /images/quad-view-center.png

        Even though the position in the Properties Shelf is (0, 0, 0), the "L"
        hangs below the Z=0 line. This is because the center (the orange
        circle, here highlighted by the 3D Cursor) is what those coordinates
        refer to.

    * In Edit Mode, select the edge at the bottom corner of the "L"

    * Snap cursor to selection


    .. figure:: /images/center-2.png
        :width: 350px

        Bottom edge selected, and 3D cursor snapped to selection. Note that it
        snaps to the midpoint between the two selected vertices.

    * Switch to Object Mode (otherwise we will get an error saying the origin
      can't be set in Edit Mode)

    * Set origin to cursor (:kbd:`Space`, search for "Set Origin", Then choose
      "Origin to 3D Cursor". Or :kbd:`Ctrl-Alt-Shift-C).

    * Set postion to Z=0

    .. tip::

        It's also common to set the origin to the geometry, which puts it at
        the geometric center of the object.
