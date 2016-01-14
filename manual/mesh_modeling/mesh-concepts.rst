Mesh concepts
=============
Until now, we've been manipulating entire objects (like the cube). We've been in
**Object Mode**. To make changes inside the object itself, we need to enter
**Edit Mode**.

The cube is an example of a **mesh object**. A mesh is made up of individual
**vertices**. These are connected by **edges**. Edges can be connected together
to create **faces**. To access the vertices, edges, and faces of the mesh and
manipulate them, we need to switch to **Edit Mode**.

Everything you've learned so far -- changing the view, grabbing, scaling,
rotating, selecting, deleting, Space bar, undo -- works the same.

==================== ================================================
Action               Description
==================== ================================================
:kbd:`Tab`           Toggle between Object Mode and Edit Mode
==================== ================================================

.. admonition:: Exercise: mesh concepts
    :class: Exercise

    .. figure:: /images/object-cube.png
        :width: 250px

        The cube in Object Mode

    * With the cube selected, enter Edit Mode (:kbd:`Tab`)

    .. figure:: /images/edit-cube.png
        :width: 250px

        The cube in Edit Mode

    * Deselect all (:kbd:`A`), then select one vertex

    .. figure:: /images/edit-cube-vertex.png
        :width: 250px

        One vertex selected in Edit Mode

    * Add an adjacent vertext to the selection, and notice how the **edge** is
      highlighted.

    .. figure:: /images/edit-cube-edge.png
        :width: 250px

        One edge selected in Edit Mode

    * Select the other adjacent vertices to select the **face**.

    .. figure:: /images/edit-cube-face.png
        :width: 250px

        One face selected in Edit Mode

    * Move, scale, and/or rotate the face and/or individual vertices and/or edges.

    * Switch back to Object Mode, and then scale, rotate, and move the entire
      cube

    .. figure:: /images/object-cube-warped.png
        :width: 250px

        "Cube" in object mode after playing around with vertices, edges, faces

More selection tools
--------------------

When working on more complex meshes, we need more powerful selection tools.

==================================== ================================================
Action                               Description
==================================== ================================================
:kbd:`B`                             "Bounding box" selection. Drag :kbd:`LMB` to select
:kbd:`Z`                             Toggle between solid and wireframe views
:kbd:`C`                             "Circle" selection. :kbd:`LMB` to select,
                                     :kbd:`Enter` or :kbd:`RMB` to confirm.
:kbd:`MW` (when in circle selection) Resize the selection circle
==================================== ================================================

.. admonition:: Exercise: selections in solid vs wireframe view
    :class: Exercise

    * Switch to Object Mode
    * Delete the cube
    * Add a torus

    .. figure:: /images/add-torus.png
        :width: 200px

        New torus

    * With the torus selected, switch to Edit Mode

    .. figure:: /images/edit-torus.png
        :width: 200px

        Torus in Edit Mode

    * Deselect all

    .. figure:: /images/torus-deselect.png
        :width: 200px

        All vertices deselected

    * Switch to front orthographic view (:kbd:`Numpad1`, :kbd:`Numpad5`)

    .. figure:: /images/torus-front-ortho.png
        :width: 250px

        Front ortho view

    * Using :kbd:`B`, select all vertices

    .. figure:: /images/torus-front-selected.png
        :width: 250px

        Selected vertices with :kbd:`B`

    * Rotate the view with :kbd:`MMB`. Which vertices were selected? Why?

    .. figure:: /images/torus-front-selected-rotated.png
        :width: 250px

        Rotated view

    * Switch to wireframe view (:kbd:`Z`)

    .. figure:: /images/torus-wireframe.png
        :width: 250px

        Wireframe mode

    * Deselect all again

    * Switch to front view again

    * Using :kbd:`B`, select all vertices again


    .. figure:: /images/torus-wireframe-selected.png
        :width: 250px

        Front view after using :kbd:`B` to select in wireframe mode.

    * Rotate view again -- what happened this time?


Making and filling holes
------------------------

.. admonition:: Exercise: the effect of deleting a vertex/edge/face
    :class: exercise

    * Switch to Edit Mode on the torus
    * Switch to solid view (:kbd:`Z`)
    * Select a single vertex and delete it (:kbd:`X`, :menuselection:`--> Vertices`)

    .. figure:: /images/torus-delete-vertex.png
        :width: 250px

        Deleting a single vertex also removes the edges and faces it's part of

    * Elsewhere on the torus, select a single edge and delete it (:kbd:`X`, :menuselection:`--> Edges`)

    .. figure:: /images/torus-delete-edge.png
        :width: 250px

        Deleting an edge also removes the faces it's part of, but doesn't
        remove the vertices that make it up.

    * Elsewhere still, select a face and delete it (:kbd:`X`, :menuselection:`--> Face`)

    .. figure:: /images/torus-delete-face.png
        :width: 250px

        Deleting a face does not affect edges or vertices. The vertices that
        made up the face have been re-selected to better show the hole

Filling in edges and faces
--------------------------

In general, it is easier to work with **quads** (faces with 4 edges) than
**tris** (3 edges). Blender does support **ngons** (faces with >4 edges),
but these can cause issues when exporting for 3D printing.


==================================== ================================================
Action                               Description
==================================== ================================================
:kbd:`F` (in Edit Mode)              "Fill" (create an edge or face)
==================================== ================================================


.. admonition:: Exercise: creating new edges and faces
    :class: exercise


    * Patch the smallest hole created above by creating a face (select the
      4 vertices, :kbd:`F` to fill)

    .. figure:: /images/torus-patched-face.png
        :width: 250px

        Patched hole created by deleting face

    * Patch the second-smallest hole from above, but first create an edge in the
      middle (select 2 vertices, :kbd:`F`), separating the hole into two small
      quads.

    .. figure:: /images/torus-patched-edge-1.png
        :width: 250px

        Added a new edge

    * Then create new faces on either side by selecting all 6 vertices and
      hitting :kbd:`F`.

    .. figure:: /images/torus-patched-edge-2.png
        :width: 250px

        Added new faces

    .. note::

        * Leave the larger hole for now -- we need to learn another
          technique.


Selection extras
----------------

At the bottom of the 3D window are buttons that allow selection of entire edges
or faces. Depending on what part of a model or what kinds of tasks you're
doing, it may be more convenient to switch to another mode.

.. figure:: /images/v-e-f-selection.png

    From left to right: vertices, edges, faces

.. figure:: /images/selection-vertex.png

    Default vertex selection

.. figure:: /images/selection-edge.png

    Edge selection: :kbd:`RMB` on an edge will select it.

.. figure:: /images/selection-face.png

    Face selection: :kbd:`RMB` in the middle of a face will select it.

