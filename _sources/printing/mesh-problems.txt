Mesh problems and solutions
---------------------------
The 3D Print Toolbox and Mesh Analysis can help with identifying issues.

======================== ================================================
Problem                  Solution
======================== ================================================
non-manifold             Fill holes (:kbd:`F`; may need :kbd:`Ctrl-T` as well)
overhanging              Add supports, or move widest face of model to Z=0
thin                     Add geometry or modify original design
sharp, too-small faces   Add geometry or modify design; try tri -> quad ->
                         tri (:kbd:`Ctrl-T`, :kbd:`Ctrl-J`, :kbd:`Ctrl-T` or
                         `Remesh modifier <https://www.blender.org/manual/modeling/modifiers/generate/remesh.html>`_
======================== ================================================


Some useful links:

* `Fixing non-manifold models <http://www.shapeways.com/tutorials/fixing-non-manifold-models>`_ in Blender, from `Shapeways <http://www.shapeways.com>`_
* `Creating hollow objects <http://www.shapeways.com/tutorials/creating-hollow-objects>`_ in Blender, from `Shapeways <http://www.shapeways.com>`_
* `Tips for modeling in Blender for 3D printing <http://www.sculpteo.com/en/tutorial/prepare-your-model-3d-printing-blender/>`_, from `Sculpteo <http://www.sculpteo.com/>`_

