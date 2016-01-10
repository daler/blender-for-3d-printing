Extrude and inset
=================
These are two techniques that can help with adding mesh geometry.

=================================================== ================================================
Action                                              Description
=================================================== ================================================
:kbd:`E`                                            Extrude
:kbd:`I`                                            Inset
=================================================== ================================================


.. admonition:: Exercise
    :class: exercise

    * Patch the large hole in the torus: select a single vertex and extrude it
      into the middle of the hole (:kbd:`E`)
    * Position the vertex -- you may need to move around a bit to get a good
      view, and possibly use wireframe mode (:kbd:`Z`).
    * Fill the hole with faces (:kbd:`F`)

    In this case, to get a perfect positioning, we'd have to do the math to
    figure out the position based on the radius of the circle

.. admonition:: Exercise
    :class: exercise

    The goal here is to make a rough USB thumb drive shape . . .

    * Back in Object mode, delete the torus.
    * Add a cube
    * Flatten along Z into the rough thickness of a thumb drive
    * Switch to Edit Mode
    * Select the front face of the cube (now more of a rectangular prism...)
    * Extrude the face out to make the "handle" part (:kbd:`E`, move mouse,
      :kbd:`LMB` to confirm)
    * With the extruded face selected, inset it a bit (:kbd:`I`)
    * With the inset face selected, extrude it to make the outside of the USB connector
    * With the new extruded face selected, inset a bit.
    * Extrude the new inset face *backwards* to make the socket part of the connector.
