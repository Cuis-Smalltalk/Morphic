Morphic-Misc1
=============
Tested: Cuis 5.0 rev 3329

To load the package
 ````Smalltalk
	Feature require:  'Morphic-Misc1'.
````

Basic morphs used by various packages 
- AddedCursors
- BorderedImageMorph
- DropColorMorph
- DropTargetMorph
- EditPanel
- FontMorph used to display and select a font
- FrameMorph
- FramedLayoutMorph
- ImagePallet
- LabelMorph
- LayoutMorphEditPanel useful to edit Layouts
- LayoutSpecEditPanel useful to edit LayoutSpecs
- LineMorph
- PalletLayoutMorph
- Panel
- PluggableScrollBar
- RadioButtonMorph
- RadioGroup
- SignMorph useful morph to "point to" non-morph objects
- SimpleNumberEntryMorph
- WindowTitleMorph
 

![Misc1 Morphs in Cuis](Misc1-Screenshot.png)

After loading this package, one can select a morph (command-click), open its menu from the halo, and edit its LayoutSpec.
If the morph is a LayoutMorph, one can also open an editor for the LayoutMorph from the halo menu. 

One package which requires this one is the Color Editor in https://github.com/Cuis-Smalltalk/Morphic/tree/master/ColorEditor

Another useful package which requires this one adds editors and allows "drag 'n drop" values for visual properties
https://github.com/Cuis-Smalltalk/Morphic/tree/master/MetaProperties

The MetaProperties package adds visual property selection items to Morph menus.
````Smalltalk
	Feature require: #'Morph-MetaProperties'.
````

=======
