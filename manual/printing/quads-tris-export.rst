Exporting to STL
================

Blender can export to STL, which is a fairly standard file format for 3D
printing. This section demonstrates the changes that occur to a mesh when
exporting and re-importing an STL


.. admonition:: Exercise
    :class: exercise

    * Either save your existing work as a `.blend` file (:menuselection:`File
      --> Save`) or load this example
    * :menuselection:`File --> Export --> Stl`
    * Select a filename and location
    * Click the :menuselection:`Export STL` button
    * Import the just-exported STL: (:menuselection:`File --> Import --> Stl`).
    * The new object came in right on top of the existing one, so select it and
      move it out of the way.
    * Switch to Edit Mode after selecting the original and the newly imported
      version: what's different?

Various algorithms for working with 3D objects works in triangles, in
particular those used for slicing models for printing. The STL format works in
triangles (**tris**), but we were modeling in **quads**. Exporting an STL
implicitly triangulated all faces.



