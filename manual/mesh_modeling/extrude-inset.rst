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

    To demonstrate extruding and insetting the goal here is to make an "L"
    shape with an inset cup. A paperclip holder maybe?

    * Back in Object mode, delete the torus.
    * Snap the cursor to the center (0, 0, 0)
    * Add a cube
    * Switch to Edit Mode
    * Select the top face and extrude upwards (:kbd:`E`, :kbd:`LMB` to confirm,
      :kbd:`RMB` to cancel)
    * Select one of the side faces and extrude it sideways to make the bottom
      of the "L".
    * Select the top face of the bottom of the "L" you just extruded
    * Use :kbd:`I` to inset the face a bit
    * Move the inset face downward to create an indentation


