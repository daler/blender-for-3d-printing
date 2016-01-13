Exporting to STL
================

Blender can export to STL, which is a fairly standard file format for 3D
printing. This section demonstrates the changes that occur to a mesh when
exporting and re-importing an STL


.. admonition:: Exercise: Exporting an STL
    :class: exercise

    * Either save your existing work as a `.blend` file (:menuselection:`File
      --> Save`) or load this example
    * Export to STL using :menuselection:`File --> Export --> Stl`
    * Select a filename and location
    * Click the :menuselection:`Export STL` button
    * Import the just-exported STL: (:menuselection:`File --> Import --> Stl`).
    * The new object came in right on top of the existing one, so select it and
      move it out of the way.
    * Switch to Edit Mode after selecting the original and the newly imported
      version: what's different?

Many algorithms for working with 3D objects operate on triangles -- in
particular those used for slicing models for printing. The STL format works in
triangles (**tris**), but we were modeling in **quads**. Exporting an STL
implicitly triangulated all faces.

Sometimes it is useful to convert from tris back to quads, since they're easier
to think about, manipulate, and calculate coordinates for precision modeling.

.. admonition:: Exercise: tris to quads
    :class: exercise

    * In Edit Mode, select all faces
    * Convert tris to quads (:kbd:`Ctrl-J`, or :kbd:`Space` and search for
      "tris to quads")
    * Note that some faces (the inset ones) may not be converted to quads --
      the algorithm is not perfect. To fix this, we could delete the edges and
      use :kbd:`F` to re-fill the faces as quads. We might have to do this if
      we imported someone else's STL. In practice, it's better to save the
      original .blend file for modifiying.

