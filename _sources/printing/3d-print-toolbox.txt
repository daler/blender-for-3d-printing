3D Print Toolbox
================

Blender has many available **Add-ons** or plugins. By default, not all are pre-loaded. One of these is the 3D Print Toolbox, which we have to enable.

* :menuselection:`File --> User Preferences` (or :kbd:`Ctrl-Alt-U`) to open the
  User Preferences menu.

* In the :menuselection:`Add-ons` tab, start typing `3d print` into the search
  bar. Once the "Mesh: 3D Print Toolbox" shows up, click the checkbox on the far
  right to enable this add-on.

.. figure:: /images/user_preferences_3dprint.png
    :width: 75%

    :menuselection:`File --> User Preferences --> "Add-ons" Tab`. Check the box
    on the far right to enable

* Close the User Preferences window.

* In the Tool Shelf, there should be a new `3D Printing` tab.

.. figure:: /images/3dprint-toolbox.png

    The newly available 3D Printing toolbox

.. note::

    Still working out the best way to organize this material in a way that also
    demonstrates the Blender tools.


Understanding the options in the 3D Print Toolbox requires knowing about
problems that can occur in printing. Understanding those problems requires
knowing about the process of 3D printing.

Know the kind of printer you're designing for and the material . . .

Fused Deposition Modeling
    Molten plastic extruded in thin layers

Stereolithography
    Bath of UV-curable resin; lasers cure one layer at a time on the surface.

Selective Laser Sintering
    High-powered laser selectively fuses thin layers of powdered material

Polyjet
    Photopolymers sprayed in thin layers and then cured with UV

Binder jetting
    Deposit binder liquid to join powdered material.



Build strength: weak parallel to build plate (layers may not fuse well)

45 degrees overhang; more than that you can get drooping

Pay attention to material: minimum thickness of walls

Tolerance when exporting to STL: 0.01mm

"Watertight" mesh:
http://support.ponoko.com/entries/20217167-creating-watertight-meshes-for-3d-printing

Drain holes, if sintering:
* http://support.ponoko.com/entries/20952096-hollowing-out-your-design-to-reduce-3d-printing-costs

Summarized from:

* https://i.materialise.com/blog/5-mistakes-to-avoid-when-designing-a-3d-model-for-3d-printing
* https://en.wikipedia.org/wiki/Fused_deposition_modeling
* http://www.instructables.com/id/3D-Printing-Basics/?ALLSTEPS

Checklist (summarized from http://support.ponoko.com/entries/21531613-How-to-export-a-STL-design-file-using-Blender-2-6-):

    * remove doubles (:kbd:`W`, :menuselection:`Remove Doubles`)
    * triangulate (ahead of time, to check for issues) (:kbd:`Ctrl-T`)
    * recalculate normals (:kbd:`Ctrl-N`)
    * select object
    * :menuselection:`File --> Export --> Stl`


3D print services
-----------------
* Shapeways
* Ponoko
* Cubify
* Sculpteo
* i.materialize

