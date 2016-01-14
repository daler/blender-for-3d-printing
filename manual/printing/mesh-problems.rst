Mesh problems and solutions
===========================

Printer limitations require meshes to meet certain criteria. These criteria
depend on the printer and material, but Blender has tools to help troubleshoot
and spot issues before sending to the printer.

3D Print Toolbox
----------------

Blender has many available **Add-ons** or plugins. By default, not all are
pre-loaded. One of these is the 3D Print Toolbox, which we have to enable.


.. admonition:: Exercise: enabling the 3D Print Toolbox.

    * :menuselection:`File --> User Preferences` (or :kbd:`Ctrl-Alt-U`) to open the
      User Preferences menu.

    * In the :menuselection:`Add-ons` tab, start typing `3d print` into the search
      bar. Once the "Mesh: 3D Print Toolbox" shows up, click the checkbox on the far
      right to enable this add-on.

    .. figure:: /images/user_preferences_3dprint.png
        :width: 75%

        :menuselection:`File --> User Preferences --> "Add-ons" Tab`. Check the box
        on the far right to enable

    * Save User Preferences if you want this to be loaded next time you run Blender.

    * Close the User Preferences window.

    * In the Tool Shelf, there should be a new `3D Printing` tab.

    .. figure:: /images/3dprint-toolbox.png

        The newly available 3D Printing toolbox

Running the 3D Print Toolbox
----------------------------

This tool checks for the following issues. Images are from the `Blender 2.6
docs
<http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts/Modeling/PrintToolbox>`_
for the toolbox.

.. figure:: /images/3dpt-intersections.png

    Intersecting faces. Internal vertices will need to be deleted

.. figure:: /images/3dpt-distorted.png

    Distorted faces. Triangulation might help this.

.. figure:: /images/3dpt-thickness.png

    Thickness. A redesign is needed.

.. figure:: /images/3dpt-overhang.png

    Overhang. Supports can be added (by extruding small parts of the glass'
    bowl downwards to Z=0)


.. admonition:: Exercise: running some checks in the 3D Print Toolbox
    :class: exercise

    * Set the parameters to match the tolerances of the intended printer
    * Enter Edit mode
    * Click the :menuselection:`Check All` button
    * The :menuselection:`Output` box will show the results. If problematic regions
      were found, a clickable button will appear in the output. Clicking this will
      highlight the faces.

    .. figure:: /images/3dpt-results.png

        Note the "Overhang face" is a button that can be clicked. Doing so
        highlights the faces (in face select mode)

    .. note::

        There should always be at least some faces flagged as "Overhanging
        face" since these will be on the build surface of the printer. You will
        have to evaluate whether any additional overhanging faces warrant
        fixing.



Mesh Analysis
-------------

Complementary to the 3D Print Toolbox is the Mesh Analysis panel. Rather than
yes/no answers per face, this generates a heatmap of problematic areas. These images are from the `Blender Mesh Analysis docs <https://www.blender.org/manual/modeling/meshes/mesh_analysis.html>`_.

.. figure:: /images/mesh-analysis.png

    The Mesh Analysis panel, in the Properties Shelf. Must be in Edit Mode to see this


.. figure:: /images/mesh-analysis-overhang.jpg
    :width: 250px

    Overhang, with red indicating more problematic areas

.. figure:: /images/mesh-analysis-thickness.jpg
    :width: 250px

    Thickness, red shows more problematic

.. figure:: /images/mesh-analysis-distortion.jpg
    :width: 250px

    Distortion, where triangulation may have a hard time figuring out how to
    divide faces.


.. figure:: /images/mesh-analysis-sharpness.jpg
    :width: 250px

    Like thickness, too-sharp areas can be difficult to print.


Incomplete guide for fixing issues
----------------------------------

======================== ================================================
Problem                  Solution
======================== ================================================
Intersections            Fix geometry by deleting inner vertices
Non-manifold             Fill holes (:kbd:`F`; may need :kbd:`Ctrl-T` as well)
Overhanging              Add supports, or move widest face of model to Z=0
Thin                     Add geometry or modify original design
Sharp, too-small faces   Add geometry or modify design; try tri -> quad ->
                         tri (:kbd:`Ctrl-T`, :kbd:`Ctrl-J`, :kbd:`Ctrl-T` or
                         `Remesh modifier <https://www.blender.org/manual/modeling/modifiers/generate/remesh.html>`_
======================== ================================================

Some useful links with more info on fixing issues:

* `Fixing non-manifold models <http://www.shapeways.com/tutorials/fixing-non-manifold-models>`_ in Blender, from `Shapeways <http://www.shapeways.com>`_
* `Creating hollow objects <http://www.shapeways.com/tutorials/creating-hollow-objects>`_ in Blender, from `Shapeways <http://www.shapeways.com>`_
* `Tips for modeling in Blender for 3D printing <http://www.sculpteo.com/en/tutorial/prepare-your-model-3d-printing-blender/>`_, from `Sculpteo <http://www.sculpteo.com/>`_

