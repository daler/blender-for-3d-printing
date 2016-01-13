Extrude and inset
=================
These are two techniques that can help with adding mesh geometry.

======================== ================================================
Action                   Description
======================== ================================================
:kbd:`E`                 Extrude
:kbd:`I`                 Inset
======================== ================================================


.. admonition:: Exercise: extruding vertex to patch a hole
    :class: exercise

    * Patch the large hole in the torus: select a single vertex and extrude it
      into the middle of the hole (:kbd:`E`)

    .. tip::

        When extruding, as soon as you hit :kbd:`E`, new vertices appear. They
        appear whether or not you move them away from where they were extruded.
        This means that if you do :kbd:`E`, :kbd:`RMB` to cancel, the extruded
        vertices are directly on top of the original ones, even though it might
        not look like it.

        Either move/scale/rotate the new vertices, undo (:kbd:`Ctrl-Z`), or
        delete the vertices (:kbd:`X`).

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

.. admonition:: Exercise: extruding and insetting
    :class: exercise

    To demonstrate extruding and insetting the goal here is to start with
    a cube and make the following object:

    .. figure:: /images/insetting-2.png
        :width: 250px

        We're aiming to make something like this from a cube.

    * Back in Object mode, delete the torus.
    * Snap the cursor to the center (0, 0, 0)
    * Add a cube
    * Switch to Edit Mode
    * Select the top face and extrude upwards (:kbd:`E`, :kbd:`LMB` to confirm,
      :kbd:`RMB` to cancel)

    .. figure:: /images/extruding-1.png
        :width: 250px

        Extruding the top face

    * Select one of the side faces and extrude it sideways to make the first
      part of the bottom of the "L" (see figure below)

    .. figure:: /images/extruding-2.png
        :width: 250px

        Extruding the side face

    * With that face still selected, extrude again (see figure below)

    .. figure:: /images/extruding-3.png
        :width: 250px

        Extruding again


    * Select the top face of the bottom of the "L" you just extruded and use
      :kbd:`I` to inset the face a bit (see figure below).

    .. figure:: /images/insetting-1.png
        :width: 250px

        Insetting the top face

    * With the inset face still selected, extrude that -- but this time, move
      it *down* to create an indentation (see figure below)

    .. figure:: /images/insetting-2.png
        :width: 250px

        Extruding the inset face downward


    .. note::

        Try experimenting -- what happens if you move the inset face down
        directly instead of extruding it down? What happens if instead of two
        extrusions for the bottom leg of the "L" you just do 1?

