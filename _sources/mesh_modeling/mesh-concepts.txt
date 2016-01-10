Mesh concepts
=============
Until now, we've been manipulating entire objects (like the cube). We've been in
**Object Mode**. To make changes inside the object itself, we need to enter
**Edit Mode**.

The cube is an example of a **mesh object**. We can switch to **Edit Mode** of
a mesh to access the **vertices** of the mesh and manipulate them.

Everything you've learned so far -- changing the view, grabbing, scaling,
rotating, selecting, deleting, Space bar, undo -- works the same.

==================== ================================================
Action               Description
==================== ================================================
:kbd:`Tab`           Toggle between Object Mode and Edit Mode
==================== ================================================

.. admonition:: Exercise
    :class: Exercise

    * With the cube selected, enter Edit Mode (:kbd:`Tab`)
    * Deselect all (:kbd:`A`), then select one vertex or a few vertices
    * Move them around, scale them, or rotate them
    * Switch back to Object Mode

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

.. admonition:: Exercise
    :class: Exercise

    * While in Object Mode, add a torus. Move it out of the way of the cube if
      you need to.
    * With the torus selected, switch to Edit Mode in the torus
    * Deselect all
    * Switch to front view
    * Using :kbd:`B`, select all vertices
    * Rotate the view with :kbd:`MMB`. Which vertices were selected? Why?
    * Switch to wireframe view (:kbd:`Z`)
    * Deselect all again
    * Switch to front view again
    * Using :kbd:`B`, select all vertices again
    * Rotate view again, which were selected?


Vertices, edges, faces
----------------------
A mesh is made up of individual **vertices**. These are connected by **edges**.
Edges can be connected together to create **faces**.

.. admonition:: Exercise
    :class: exercise

    * Switch to Edit Mode on the torus
    * Select a single vertex
    * Add another vertex to the selection: the highlighted line is an edge.
    * Select the adjacent two other vertices to complete the selection of a face.
    * Deselect all
    * Select a single vertex and delete it (:kbd:`X`, :menuselection:`--> Vertex`)
    * Elsewhere on the torus, select a single edge and delete it (:kbd:`X`, :menuselection:`--> Edge`)
    * Elsewhere still, select a face and delete it (:kbd:`X`, :menuselection:`--> Face`)
    * Elsewhere again, select several adjacent faces and delete just the faces
      (:kbd:`X`, :menuselection:`--> Only Faces`)

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


.. admonition:: Exercise
    :class: exercise


    * Patch the smallest hole created above by creating a face (select the 4 vertices, :kbd:`F` to fill)
    * Patch the second-smallest hole from above, but first create an edge in the
      middle (select 2 vertices, :kbd:`F`), separating the hole into two small
      quads. Then create new faces.

    .. note:: 

        * Leave the larger hole for now -- we need to learn another technique.
