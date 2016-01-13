Transformations
===============

We can **move**, **scale**, and **rotate** objects, collectively called
**transformation**.

====================== ================================================
Action                  Description
====================== ================================================
:kbd:`G`               Grab (move, translate)
:kbd:`S`               Scale (resize)
:kbd:`R`               Rotate
:kbd:`LMB`             Confirm transformation
====================== ================================================

.. admonition:: Exercise
    :class: exercise

    * Move, rotate, scale the cube to get used to the controls

    * Note the changing numbers in the lower left corner of the 3D View

    * Use :kbd:`Ctrl-Z` to undo and get the cube back to the origin.


Constrain a transformation
--------------------------

Immediately after pressing :kbd:`G`, :kbd:`S`, or :kbd:`R` we can constrain the
transformation to a particular axis by hitting the key for that axis

=================================================== ================================================
Action                                              Description
=================================================== ================================================
:kbd:`X` (immediately after initiating transform)   Constrain transformation to X axis
:kbd:`Y` (immediately after initiating transform)   Constrain transformation to Y axis
:kbd:`Z` (immediately after initiating transform)   Constrain transformation to Z axis
:kbd:`MMB` (while moving the mouse)                 Constrain to last-moved-in direction
:kbd:`Ctrl` (while moving the mouse)                Snap to the grid
:kbd:`Shift` (while moving the mouse)               Fine-tune the transformation (10x slower)
=================================================== ================================================

.. admonition:: Exercise
    :class: exercise

    * Make the cube taller (:kbd:`S`, :kbd:`Z`)
    * Move the cube back 5 units (:kbd:`G`, :kbd:`Y`, hold :kbd:`Ctrl` and pay
      attention to the numbers at the bottom left)

    .. figure:: /images/stretched-cube-back-5.png

        The stretched cube, in the process of being moved back in the
        Y direction 5 units.


Type numbers to be more precise
-------------------------------

One way of making precise transformations is to type numbers after choosing a transformation axis.

============================================================ ================================================
Action                                                       Description
============================================================ ================================================
:kbd:`number keys` (immediately after initiating transform)  Precise entry of transformation
============================================================ ================================================

.. admonition:: Exercise
    :class: exercise

    * Rotate the cube by 45 degrees along the Y axis

    .. figure:: /images/stretched-cube-rotated.png
        :width: 50%

        The stretched cube, in the process of being rotated 45 degrees


Properties shelf
----------------

In the Properties Shelf, we can type in exact values for the position of an
object. Toggle the shelf on and off with :kbd:`N` (think "numbers").

=================================================== ================================================
Action                                              Description
=================================================== ================================================
:kbd:`N`                                            Toggle the Properties Shelf
=================================================== ================================================

.. admonition:: Exercise
    :class: exercise

    * Using the Properties Shelf, reset the cube to its original location (0,
      0, 0), rotation (0, 0, 0), and scale (1, 1, 1)

    .. figure:: /images/nkey-before.png

        Properties before resetting transforms

    .. figure:: /images/nkey-after.png

        Properties after resetting transforms


Units
-----

For 3D printing, we want to be able to relate what we do in Blender to the real
world. By default, Blender uses arbitrary "Blender units": one unit per grid
square. Let's set the units to millimeters.

.. admonition:: Exercise
    :class: exercise

    * In the Properties panel (far right of the interface), click the button
      for Scene Properties (see figure below)

    .. figure:: /images/scene-properties.png

        Scene properties (after clicking highlighted button)

    * Click :menuselection:`Metric`, and enter :menuselection:`0.001` into the
      "Scale" text box. Now one "Blender unit" will be equivalent to 0.001
      meters or 1 mm.

    .. figure:: /images/scene-properties-units.png

        After setting units to millimeters

    * In the Properties Shelf (the one toggled by :kbd:`N`), look for the
      :menuselection:`Display` section. It may be folded up, so click the arrow
      to unfold it.

    * Enter :menuselection:`0.001` into the "Scale" text box. This makes the
      background grid use millimeters as well.

    .. figure:: /images/display-panel.png

        Set the scale of grid lines to be 0.001 units (mm) as well.

    .. note::

        If importing a file that someone else created, you may have to reset
        the units. You may find yourself doing this a lot . . .

.. seealso::

    Since transformations are such a common task, Blender has many ways of
    doing this. See the Blender manual sections on `grab
    <https://www.blender.org/manual/editors/3dview/transform/grab.html>`_,
    `rotate
    <https://www.blender.org/manual/editors/3dview/transform/rotate.html>`_ and
    `scale
    <https://www.blender.org/manual/editors/3dview/transform/scale.html>`_ for
    many more details and tricks for transformations.
