Navigate the 3D View
====================

Rotate/pan/zoom with mouse
--------------------------

============================ ============================================================
Action                       Description
============================ ============================================================
:kbd:`MMB`                   Rotate the view
:kbd:`Shift-MMB`             Pan the view
:kbd:`Ctrl-MMB`/:kbd:`Wheel` Zoom the view
============================ ============================================================

.. admonition:: Exercise
    :class: exercise

    * Manipulate the view so that only the cube fills the 3D View.


    .. figure:: /images/just_the_cube.png
        :width: 50%

        Aim for a view like this



Use NumPad to snap to views
---------------------------

.. note::

    Laptop doesn't have a NumPad? Go to :menuselection:`File --> User Preferences
    --> Input tab` and check the `Emulate Numpad` box. This will make the top
    number keys behave like the NumPad.

================== ============================================================
Action             Description
================== ============================================================
:kbd:`Numpad7`     Snap to top view
:kbd:`Numpad1`     Snap to view from the front
:kbd:`Numpad3`     Snap to view from the right
:kbd:`Numpad5`     Swap between orthographic and perspective views
:kbd:`Numpad9`     Swap (switches between top/bottom or left/right)
================== ============================================================


.. admonition:: Exercise
    :class: exercise

    * Play around with the view -- use :kbd:`MMB` to randomly rotate the view,
      then use the NumPad keys to snap to views.

    * Note the top left corner (view label) and bottom left corner (axes) as
      you do so.



.. figure:: /images/front-crop.png
    :width: 25%

    Front view (X and Z axes visible)

.. figure:: /images/side-crop.png
    :width: 25%

    Right view (Y and Z axes visible)

.. figure:: /images/top-crop.png
    :width: 25%

    Top view (X and Y axes visible)

.. figure:: /images/orthographic-crop.png
    :width: 25%

    Orthographic view (parallel lines on screen are also parallel on object;
    units have same number of pixels everywhere on screen). Better for
    precision modeling.

.. figure:: /images/perspective-crop.png
    :width: 25%

    Perspective view (more realistic view in some cases). Better for rendering
    or getting a feel for the model.

.. seealso::

    The `Blender documentation on the 3D view
    <https://www.blender.org/manual/editors/3dview/navigate/3d_view.html>`_ has
    more details.
