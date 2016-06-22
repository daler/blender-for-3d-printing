Exporting to STL
================

Blender can export to STL, which is a fairly standard file format for 3D
printing. This section demonstrates the changes that occur to a mesh when
exporting and re-importing an STL


.. admonition:: Exercise: Exporting an STL
    :class: exercise

    * Either save your existing work as a `.blend` file (:menuselection:`File
      --> Save`) or load this example: :download:`L-centered.blend </images/L-centered.blend>`.

    * Select the object to export.

    * :menuselection:`File --> Export --> Stl`

    * Check the `Scene Unit` checkbox. This stores the units in the STL file.

    .. figure:: /images/stl-export-options.png

    * Select a filename and location lick the :menuselection:`Export STL` button

    * Import the just-exported STL: (:menuselection:`File --> Import --> Stl`).

    * The new object came in right on top of the existing one, so select it and
      move it out of the way.

    * Switch to Edit Mode after selecting the original and the newly imported
      version: what's different?

    .. figure:: /images/imported-stl.png
        :width: 250px


Importing an STL
================

Be careful: when opening someone else's STL, often we don't know ahead of time
if units were stored in the STL file.  If you import an object and it's either
huge or so small it looks like nothing happened, you will need to be more
careful about units.  If units were not stored in the STL, Blender assumes
meters. If units are not set in Blender but they are set in the STL, Blender
assumes its "None" units are meters. Here is a summary of how Blender behaves
when importing STL files with or without units:

.. note::

    =============== =========== =======
    Blender units   STL units   Imported object size
    =============== =========== =======
    None            None        OK
    millimeters     millimeters OK
    meters          meters      OK
    None            millmeters  Very small
    millimeters     None        Huge
    meters          None        OK
    =============== =========== =======

    If the size of the imported object seems wrong, try :ref:`setting or unsetting
    Blender's units <units>`


Many algorithms for working with 3D objects operate on triangles -- in
particular those used for slicing models for printing. The STL format works in
triangles (**tris**), but we were modeling in **quads**. Exporting an STL
implicitly triangulated all faces.

Sometimes it is useful to convert from tris back to quads, since they're easier
to think about, manipulate, and calculate coordinates for precision modeling.

.. admonition:: Exercise: tris to quads
    :class: exercise

    * In Edit Mode, select all faces
    * Convert tris to quads (:kbd:`Alt-J`, or :kbd:`Space` and search for
      "tris to quads")

    .. figure:: /images/tris-to-quads.png
        :width: 250px

    * Note that some faces (the inset ones) were not converted to quads -- the
      algorithm is not perfect. To fix this, we could delete the edges and use
      :kbd:`F` to re-fill the faces as quads. We might have to do this if we
      imported someone else's STL. In practice, it's better to save the
      original .blend file for modifiying.

Examples
========

Example "L" shape
-----------------

- units stored in the STL (:download:`L-centered-units.stl </images/L-centered-units.stl>`)
- units not stored in the STL (:download:`L-centered-no-units.stl </images/L-centered-no-units.stl>`)
- blender file (:download:`L-centered.blend </images/L-centered.blend>`)

Example instrument mount
------------------------

- Started from `Simple Beaker Clamp
  <http://3dprint.nih.gov/discover/3DPX-002153>`_ on the `NIH 3D Print Exchange
  <http://3dprint.nih.gov/>`_ (:download:`MainArm_0.stl </images/MainArm_0.stl>`)
- Modified instrument mount Blender file (:download:`instrument-mount.blend </images/instrument-mount.blend>`)
- Modified instrument mount STL file (:download:`instrument-mount.stl </images/instrument-mount.stl>`)
