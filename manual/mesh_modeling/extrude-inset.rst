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

    .. figure:: /images/torus-extruded-vertex.png
        :width: 250px

        A single vertex extruded. Notice the new vertex (selected) already has
        an edge connecting it to the original vertex.

    * Position the vertex -- you may need to move around a bit to get a good
      view, and possibly use wireframe mode (:kbd:`Z`).

    .. note:: 

        If we wanted to get perfect positioning, we'd have to do the math to
        figure out the X, Y, Z position based on the radius of the circle and
        then enter those coordinates in the Properties shelf.

    * Fill the hole by first creating the additional edges (:kbd:`F`), then
      filling the faces.

    .. figure:: /images/torus-fill-1.png
        :width: 250px

    .. figure:: /images/torus-fill-2.png
        :width: 250px


    .. figure:: /images/torus-fill-3.png
        :width: 250px


    .. figure:: /images/torus-fill-4.png
        :width: 250px

    .. figure:: /images/torus-fill-5.png
        :width: 250px

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
