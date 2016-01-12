3D Printing background
======================

Quick background on 3D Printing
-------------------------------
There are different limitations for each method and each material, so you need
to design for the method and material. Common methods:

Fused Deposition Modeling
    Molten plastic extruded in thin layers. Most common hobbyist method.

Stereolithography
    Bath of UV-curable resin; lasers cure one layer at a time on the surface.
    Can be high-resolution.

Selective Laser Sintering
    High-powered laser selectively fuses thin layers of powdered material. Can
    do metals.

Polyjet
    Photopolymers sprayed in thin layers and then cured with UV

Binder jetting
    Deposit binder liquid to join powdered material. Can do ceramics.


Design notes
------------
In no particular order . . .

* Build strength: FDM prints can be weak parallel to build plate (due to layers not fusing well)

* In general, avoid more than 45 degrees overhang without support; more than
  that you can get drooping.

* Minimum thickness of walls and features depends heavily on material and
  method

* Tolerance when exporting to STL: 0.01mm. Anything more and the file may be
  too big due to excessive detail that can't be used by the printer

* Aim for a "watertight" mesh as in `this diagram <http://support.ponoko.com/entries/20217167-creating-watertight-meshes-for-3d-printing>`_.

* If sintering and you have open space, don't forget `drain holes
  <http://support.ponoko.com/entries/20952096-hollowing-out-your-design-to-reduce-3d-printing-costs>`_.


References
----------
The above was summarized from:

* https://i.materialise.com/blog/5-mistakes-to-avoid-when-designing-a-3d-model-for-3d-printing
* https://en.wikipedia.org/wiki/Fused_deposition_modeling
* http://www.instructables.com/id/3D-Printing-Basics/?ALLSTEPS


3D print services
-----------------
* `NIH Library <http://nihlibrary.campusguides.com/3dprinting>`_
* `Shapeways <http://www.shapeways.com/>`_
* `Ponoko <https://www.ponoko.com/>`_
* `Cubify <http://cubify.com/>`_
* `Sculpteo <http://www.sculpteo.com/en/>`_
* `i.materialise <https://i.materialise.com/>`_
