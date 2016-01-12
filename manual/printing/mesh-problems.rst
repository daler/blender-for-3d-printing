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



