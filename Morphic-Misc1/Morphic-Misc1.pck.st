'From Cuis 5.0 [latest update: #4519] on 5 January 2021 at 3:01:24 pm'!
'Description Various basic morphs used by several packages -- KenD'!
!provides: 'Morphic-Misc1' 1 171!
!requires: 'Cuis-Base' 50 4430 nil!
!requires: 'Color-Extras' 1 4 nil!
!requires: 'Morphic-Widgets-Extras' 1 3 nil!
SystemOrganization addCategory: 'Morphic-Misc1'!


!classDefinition: #MorphicMisc1Package category: 'Morphic-Misc1'!
CodePackage subclass: #MorphicMisc1Package
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'MorphicMisc1Package class' category: 'Morphic-Misc1'!
MorphicMisc1Package class
	instanceVariableNames: ''!


!MorphicMisc1Package commentStamp: '<historical>' prior: 0!
My purpose in life is to check that any base image methods overridden have not been updated.
See #MorphMisc1Package class>>prePackageInstall!

!MorphicMisc1Package class methodsFor: 'installing' stamp: 'KenD 3/13/2020 14:01:21'!
prePackageInstall

	"Check that any method in base image that I wish to override has not changed"
	
	"Morph>>changeColor
	 Last updated   2013-03-05T13:29:00+00:00 @@"
	self assert:
		(Morph methodDictionary at: #changeColor) dateAndTime =
			(DateAndTime
				year: 2013
				month: 3
				day: 5
				hour: 13
				minute: 29
				second: 0).
! !
MorphicMisc1Package prePackageInstall!
!classDefinition: #AddedCursors category: 'Morphic-Misc1'!
CursorWithMask subclass: #AddedCursors
	instanceVariableNames: ''
	classVariableNames: 'ClosedHand OpenHand'
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'AddedCursors class' category: 'Morphic-Misc1'!
AddedCursors class
	instanceVariableNames: ''!

!classDefinition: #LineMorph category: 'Morphic-Misc1'!
KernelMorph subclass: #LineMorph
	instanceVariableNames: 'startPointSelector endPointSelector lineWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'LineMorph class' category: 'Morphic-Misc1'!
LineMorph class
	instanceVariableNames: ''!

!classDefinition: #PointerLineMorph category: 'Morphic-Misc1'!
LineMorph subclass: #PointerLineMorph
	instanceVariableNames: 'endPointMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PointerLineMorph class' category: 'Morphic-Misc1'!
PointerLineMorph class
	instanceVariableNames: ''!

!classDefinition: #PalletLayoutMorph category: 'Morphic-Misc1'!
LayoutMorph subclass: #PalletLayoutMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PalletLayoutMorph class' category: 'Morphic-Misc1'!
PalletLayoutMorph class
	instanceVariableNames: ''!

!classDefinition: #RadioGroup category: 'Morphic-Misc1'!
LayoutMorph subclass: #RadioGroup
	instanceVariableNames: 'list font buttonOnLeft buttons'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'RadioGroup class' category: 'Morphic-Misc1'!
RadioGroup class
	instanceVariableNames: ''!

!classDefinition: #WindowTitleMorph category: 'Morphic-Misc1'!
LayoutMorph subclass: #WindowTitleMorph
	instanceVariableNames: 'titleString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'WindowTitleMorph class' category: 'Morphic-Misc1'!
WindowTitleMorph class
	instanceVariableNames: ''!

!classDefinition: #ClickColorMorph category: 'Morphic-Misc1'!
ImageMorph subclass: #ClickColorMorph
	instanceVariableNames: 'colorTargetMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'ClickColorMorph class' category: 'Morphic-Misc1'!
ClickColorMorph class
	instanceVariableNames: ''!

!classDefinition: #DropColorMorph category: 'Morphic-Misc1'!
ImageMorph subclass: #DropColorMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'DropColorMorph class' category: 'Morphic-Misc1'!
DropColorMorph class
	instanceVariableNames: ''!

!classDefinition: #ImagePallet category: 'Morphic-Misc1'!
PluggableScrollPane subclass: #ImagePallet
	instanceVariableNames: 'nameImageCollection imageFilter imageExtent calculatedExtent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'ImagePallet class' category: 'Morphic-Misc1'!
ImagePallet class
	instanceVariableNames: ''!

!classDefinition: #PickAColorPallet category: 'Morphic-Misc1'!
ImagePallet subclass: #PickAColorPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PickAColorPallet class' category: 'Morphic-Misc1'!
PickAColorPallet class
	instanceVariableNames: ''!

!classDefinition: #PickAIconPallet category: 'Morphic-Misc1'!
ImagePallet subclass: #PickAIconPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PickAIconPallet class' category: 'Morphic-Misc1'!
PickAIconPallet class
	instanceVariableNames: ''!

!classDefinition: #PickALargerIconPallet category: 'Morphic-Misc1'!
ImagePallet subclass: #PickALargerIconPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PickALargerIconPallet class' category: 'Morphic-Misc1'!
PickALargerIconPallet class
	instanceVariableNames: ''!

!classDefinition: #MorphMessageBox category: 'Morphic-Misc1'!
WorkspaceWindow subclass: #MorphMessageBox
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'MorphMessageBox class' category: 'Morphic-Misc1'!
MorphMessageBox class
	instanceVariableNames: ''!

!classDefinition: #DropTargetMorph category: 'Morphic-Misc1'!
SystemWindow subclass: #DropTargetMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'DropTargetMorph class' category: 'Morphic-Misc1'!
DropTargetMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableScrollBar category: 'Morphic-Misc1'!
ScrollBar subclass: #PluggableScrollBar
	instanceVariableNames: 'refreshValueSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PluggableScrollBar class' category: 'Morphic-Misc1'!
PluggableScrollBar class
	instanceVariableNames: ''!

!classDefinition: #Panel category: 'Morphic-Misc1'!
PluggableMorph subclass: #Panel
	instanceVariableNames: 'widgetsColor titleMorph layoutMorph stayUp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'Panel class' category: 'Morphic-Misc1'!
Panel class
	instanceVariableNames: ''!

!classDefinition: #EditPanel category: 'Morphic-Misc1'!
Panel subclass: #EditPanel
	instanceVariableNames: 'editModel buttonArea'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'EditPanel class' category: 'Morphic-Misc1'!
EditPanel class
	instanceVariableNames: ''!

!classDefinition: #LayoutMorphEditPanel category: 'Morphic-Misc1'!
EditPanel subclass: #LayoutMorphEditPanel
	instanceVariableNames: 'directionArea paddingArea separationArea colorArea padRadio padEntry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'LayoutMorphEditPanel class' category: 'Morphic-Misc1'!
LayoutMorphEditPanel class
	instanceVariableNames: ''!

!classDefinition: #LayoutSpecEditPanel category: 'Morphic-Misc1'!
EditPanel subclass: #LayoutSpecEditPanel
	instanceVariableNames: 'widthArea heightArea paddingArea padRadio padEntry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'LayoutSpecEditPanel class' category: 'Morphic-Misc1'!
LayoutSpecEditPanel class
	instanceVariableNames: ''!

!classDefinition: #ValueEntryPanel category: 'Morphic-Misc1'!
Panel subclass: #ValueEntryPanel
	instanceVariableNames: 'kind'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'ValueEntryPanel class' category: 'Morphic-Misc1'!
ValueEntryPanel class
	instanceVariableNames: ''!

!classDefinition: #CharacterEntryPanel category: 'Morphic-Misc1'!
ValueEntryPanel subclass: #CharacterEntryPanel
	instanceVariableNames: 'characterEditMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'CharacterEntryPanel class' category: 'Morphic-Misc1'!
CharacterEntryPanel class
	instanceVariableNames: ''!

!classDefinition: #PointEntryPanel category: 'Morphic-Misc1'!
ValueEntryPanel subclass: #PointEntryPanel
	instanceVariableNames: 'xEntryMorph yEntryMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PointEntryPanel class' category: 'Morphic-Misc1'!
PointEntryPanel class
	instanceVariableNames: ''!

!classDefinition: #PositiveIntegerEntryPanel category: 'Morphic-Misc1'!
ValueEntryPanel subclass: #PositiveIntegerEntryPanel
	instanceVariableNames: 'numberEntryMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PositiveIntegerEntryPanel class' category: 'Morphic-Misc1'!
PositiveIntegerEntryPanel class
	instanceVariableNames: ''!

!classDefinition: #StringEntryPanel category: 'Morphic-Misc1'!
ValueEntryPanel subclass: #StringEntryPanel
	instanceVariableNames: 'stringEditMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'StringEntryPanel class' category: 'Morphic-Misc1'!
StringEntryPanel class
	instanceVariableNames: ''!

!classDefinition: #SignMorph category: 'Morphic-Misc1'!
HoverHelpMorph subclass: #SignMorph
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'SignMorph class' category: 'Morphic-Misc1'!
SignMorph class
	instanceVariableNames: ''!

!classDefinition: #MultiSelectMenu category: 'Morphic-Misc1'!
MenuMorph subclass: #MultiSelectMenu
	instanceVariableNames: 'choices seed result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'MultiSelectMenu class' category: 'Morphic-Misc1'!
MultiSelectMenu class
	instanceVariableNames: ''!

!classDefinition: #SimpleNumberEntryMorph category: 'Morphic-Misc1'!
OneLineEditorMorph subclass: #SimpleNumberEntryMorph
	instanceVariableNames: 'entryChars numCharsToHold theValue validator toString valueAccessor valueUpdator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'SimpleNumberEntryMorph class' category: 'Morphic-Misc1'!
SimpleNumberEntryMorph class
	instanceVariableNames: ''!

!classDefinition: #FontMorph category: 'Morphic-Misc1'!
WidgetMorph subclass: #FontMorph
	instanceVariableNames: 'labelMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'FontMorph class' category: 'Morphic-Misc1'!
FontMorph class
	instanceVariableNames: ''!

!classDefinition: #FrameMorph category: 'Morphic-Misc1'!
WidgetMorph subclass: #FrameMorph
	instanceVariableNames: 'colorIndex frameSelector'
	classVariableNames: 'Colors'
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'FrameMorph class' category: 'Morphic-Misc1'!
FrameMorph class
	instanceVariableNames: ''!

!classDefinition: #RadioButtonMorph category: 'Morphic-Misc1'!
WidgetMorph subclass: #RadioButtonMorph
	instanceVariableNames: 'isSelected'
	classVariableNames: 'DefaultDiameter'
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'RadioButtonMorph class' category: 'Morphic-Misc1'!
RadioButtonMorph class
	instanceVariableNames: ''!


!AddedCursors commentStamp: '<historical>' prior: 0!
Additional Cursors -- see class side

AddedCursors openHand activateCursor.
AddedCursors closedHand activateCursor.!

!LineMorph commentStamp: '<historical>' prior: 0!
I am a line from my start point to my end point.!

!PointerLineMorph commentStamp: '<historical>' prior: 0!
I am a LineMorph which has a "pointer" morph which I maintain in position at my endpoint.!

!PalletLayoutMorph commentStamp: '<historical>' prior: 0!
I am a LayoutMorph which allows grabbing (cloning) my submorphs.!

!RadioGroup commentStamp: '<historical>' prior: 0!
I manage a RadioGroup -- a Group of RadioButtons, each with a label.

I am a columnMorph

Each of my submorphs is a row layoutMorph which contains a radio button and a label and may contain other, additional  morphs.

iVars:
 list  an Array of Symbols used as labels
 font - font for labels
 buttonOnLeft -- if True, button image then label else label then button image
 buttons - cached array of buttons
!

!WindowTitleMorph commentStamp: '<historical>' prior: 0!
I hold and layout the title section of windows/panels.

My owner gets messages for standard buttons.

As my instances are created before my owner is set, I delegate events to my owner.

To simplify management, all buttons are present but hidden unless requested.

See Panel, LayoutMorphEditPanel and LayoutSpecEditPanel as usage examples!

!ClickColorMorph commentStamp: '<historical>' prior: 0!
I am clicked upon to set my colorTargetMorph to my color.

I am used to select/set a color, not to be dragged.  Note DropColorMorph.!

!DropColorMorph commentStamp: '<historical>' prior: 0!
I am picked up to be dropped on another morph.

I change that morph's color to my color.

See method #dropAction:

Note: To click-select a color, see ClickColorMorph!

!ImagePallet commentStamp: '<historical>' prior: 0!
I Display a pallet of widgets to grab a copy of to drop on something else

See my class examples:
	ImagePallet namedColors.
	ImagePallet namedIcons.
 	ImagePallet strikeFonts.
	ImagePallet largerIcons.
!

!PickAColorPallet commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.!

!PickAIconPallet commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.!

!PickALargerIconPallet commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.!

!MorphMessageBox commentStamp: '<historical>' prior: 0!
I am a Workspace specialized to send a message to a Morph.!

!DropTargetMorph commentStamp: '<historical>' prior: 0!
I am a transcient drop target for a morph.

I allow one to drop morphs which make changes to myMorph.
Each such morph has property DropActionMorph set to true.
!

!PluggableScrollBar commentStamp: '<historical>' prior: 0!
I am a ScrollBar which can get new values from my model.!

!Panel commentStamp: '<historical>' prior: 0!
I am a very simple window with a label.

You need to add buttons, drop-downs, fill-ins to make me useful 
!

!EditPanel commentStamp: '<historical>' prior: 0!
I abstract common edit methods for my concrete subclasses.

The gist is that my model is a reference to the original object.
My editModel is a "putty" or "shadow" copy to which all edit operations are applied.
If the user Update's then the changes are propagated from the editModel to the model.

Examples:
  LayoutMorphEditPanel open:  (LayoutMorph newRow).
  LayoutSpecEditPanel open: (LayoutSpec useAll).!

!LayoutMorphEditPanel commentStamp: '<historical>' prior: 0!
I am a simple editor for a LayoutMorph.

iVars:
  model (inherited) -- the LayoutMorph being 'edited'  -- unchanged until user OKs
  editModel (inherited) -- clone of theLayoutMorp; holds edit state until saved to original
  directionArea paddingArea separationArea colorArea -- are layouts for controls.

LayoutMorphEditPanel open: (LayoutMorph newRow).!

!LayoutSpecEditPanel commentStamp: '<historical>' prior: 0!
I am a simple editor for a LayoutSpec.

!

!ValueEntryPanel commentStamp: '<historical>' prior: 0!
I am an abstract class for editing simple values.!

!CharacterEntryPanel commentStamp: '<historical>' prior: 0!
I provide for editing/changing a single character.!

!PointEntryPanel commentStamp: '<historical>' prior: 0!
I am a panel for filling in a Point value.

My xEntryMorph and yEntryMorph hold the current points x@y value.

!

!PositiveIntegerEntryPanel commentStamp: '<historical>' prior: 0!
I edit positive integers!

!StringEntryPanel commentStamp: '<historical>' prior: 0!
I allow a user to edit a string!

!SignMorph commentStamp: '<historical>' prior: 0!
My instances are visual proxy's for objects which do not have a visual representation.

This is helpful for drag-n-drop.

A sign by its nature points to something else.  Use: 
	SignMorph forObject: <object>

ivar:
   object - the object I point-to/denote/stand-for

Examples:
  (SignMorph forObject: Color green) openInHand.
  (SignMorph forObject: 4.7) openInHand.
  (SignMorph forObject: 'Ball of string') openInHand.
  EllipseMorph initializedInstance signMorphForMe.
!

!MultiSelectMenu commentStamp: '<historical>' prior: 0!
I am used to relate a set of names to an integer incoding, where each  symbolic name is realated to a bit.

My instances present the selections to a user with Accept/Cancel.

Cancel returns the seed (which is used to set the initial values), Accept returns the new ORed value.

When the value ranked zero is selected, the other 'bits' are delselected.

For example, TextEmphasis codes are a bit ORing of values:
 2r00000000  0  normal
 2r00000001	 1	bold
 2r00000010	 2	itallic
 2r00000100	 4	underlined		
 2r00001000	 8	struck out       
 2r00010000	16 Superscript 
 2r00100000	32 Subscript      
 2r01000000	64 	with ST-80 Glyphs
 !

!SimpleNumberEntryMorph commentStamp: '<historical>' prior: 0!
I am a simple numeric entry form.  I display and accept numeric values.

See class side for examples.

iVars
  entryChars - legal input characters, e.g. '1234567890ABCDEFabcdef'
  numCharsToHold - nil or number of chanrs for fixed size of field
  value - current value, defaulting to 0 (zero)
  label - string to display, e.g. '', '16r', 'per cent'
  validator - a closure which takes a string and returns a new valid value or nil
	e.g. [ :str | [ ('16r', str) asNumber ] on: Error do: [ ^nil ]].
  toString - a closure which takes a value and returns a string to display
	e.g. [ :n | n printStringHex ]

The validator is applied on return and if nil, the old value is redisplayed and the field flashed,
else the new value is remembered and displayed.!

!FontMorph commentStamp: 'jmv 6/11/2020 16:48:37' prior: 0!
My instances display 'AbBbCc $123' using my specified font an emphysis.

I am used to display a font, e.g. in a FontPallet.


(FontMorph font: FontFamily defaultFamilyAndPointSize) openInHand.

ImagePallet systemFonts.!

!FrameMorph commentStamp: '<historical>' prior: 0!
I appear as an empty frame!

!RadioButtonMorph commentStamp: '<historical>' prior: 0!
I am a very simple radio button.!

!LineMorph class methodsFor: 'instance creation' stamp: 'KenD 9/26/2013 16:21'!
initializedInstance
	"Hand out a sample line"

	^ self new startPoint: 20@30 endPoint: 120@160 width: 6 color: Color cyan
! !

!PointerLineMorph class methodsFor: 'instance creation' stamp: 'KenD 9/15/2016 17:37:25'!
initializedInstance

	| newInst |
	newInst  := super initializedInstance.
	newInst updateEndPoint.
	^newInst! !

!PickAColorPallet class methodsFor: 'instance creation' stamp: 'KenD 12/7/2016 08:24:49'!
initializedInstance

	^ super namedColors! !

!PickAIconPallet class methodsFor: 'instance creation' stamp: 'KenD 12/7/2016 08:27:02'!
initializedInstance

	^ super namedIcons ! !

!PickALargerIconPallet class methodsFor: 'instance creation' stamp: 'KenD 12/7/2016 08:27:27'!
initializedInstance

	^ super largerIcons ! !

!Panel methodsFor: 'printing' stamp: 'KenD 4/24/2015 16:04'!
printOn: aStream 

	super printOn: aStream.
	aStream nextPutAll: '('.
	aStream
		print: self label;
		nextPutAll: ')'! !

!SignMorph methodsFor: 'accessing' stamp: 'KenD 10/5/2013 17:15'!
name

	^ contents ! !

!FontMorph class methodsFor: 'defaults' stamp: 'jmv 6/11/2020 16:48:44'!
initializedInstance

	^ self font: FontFamily defaultFamilyAndPointSize! !

!AddedCursors class methodsFor: 'constants' stamp: 'KenD 1/17/2016 12:02'!
closedHand
"
	AddedCursors closedHand activateCursor.
"
	^ ClosedHand ! !

!AddedCursors class methodsFor: 'constants' stamp: 'KenD 1/17/2016 12:01'!
openHand
"
	AddedCursors openHand activateCursor.
"

	^ OpenHand ! !

!AddedCursors class methodsFor: 'private' stamp: 'KenD 9/22/2013 19:23'!
historicalCruft
"
	self historicalCruft.
"

	| openHand openHandMask closedHand closedHandMask openHandCursor closedHandCursor |
	openHand := Form fromFileNamed: 'handOpen2.png'.
	openHandMask  := Form fromFileNamed: 'handOpen2-mask.png'.
	closedHand  :=  Form fromFileNamed: 'handClosed2.png'.
	closedHandMask  := Form fromFileNamed: 'handClosed2-mask.png'.

	openHandCursor := (CursorWithMask derivedFrom: openHand)  setMaskForm: openHandMask.
	closedHandCursor := (CursorWithMask derivedFrom: closedHand)  setMaskForm: closedHandMask.

	OpenHand := openHandCursor.
	ClosedHand := closedHandCursor.

	^ openHandCursor! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'jmv 11/19/2020 13:49:54'!
initClosedHand
"
	self initClosedHand.
"
	ClosedHand := ((CursorWithMask
	small1BitExtent: 16@16
	pixelBits: #(
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r0000011011011010
		2r0000100100100101
		2r0000100000000001
		2r0011100000000001
		2r0100100000000001
		2r0100000000000001
		2r0100000000000001
		2r0100000000000011
		2r0010000000000111
		2r0001000000001110
		2r0000100000001100
		2r0000010000001100)
	offset: -1@-1)
 setMaskForm: (Form
	small1BitExtent: 16@16
	pixelBits: #(
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r0000110110110100
		2r0001111111111110
		2r0001111111111111
		2r0111111111111111
		2r1111111111111111
		2r1111111111111111
		2r1111111111111111
		2r1111111111111111
		2r0111111111111110
		2r0011111111111100
		2r0001111111111000
		2r0000111111111000
		2r0000111111111000)
	offset: 0@0))! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'jmv 11/19/2020 13:50:28'!
initOpenHand
"
	self initOpenHand.
"

	OpenHand := ((CursorWithMask
	small1BitExtent: 16@16
	pixelBits: #(
		2r0000000000000000
		2r0000011011011000
		2r0000100100100110
		2r0000100100100101
		2r0000100100100101
		2r0110100100100101
		2r0101100100100101
		2r0100100100100101
		2r0100100000000001
		2r0100010000000001
		2r0100000000000001
		2r0100000000000011
		2r0010000000000111
		2r0001000000001110
		2r0000100000001100
		2r0000010000001100)
	offset: -1@-1)
 setMaskForm: (Form
	small1BitExtent: 16@16
	pixelBits: #(
		2r0000110110110000
		2r0001111111111100
		2r0001111111111110
		2r0001111111111110
		2r1101111111111110
		2r1111111111111111
		2r1111111111111111
		2r1111111111111111
		2r1111111111111111
		2r1111111111111111
		2r1111111111111111
		2r0111111111111110
		2r0011111111111100
		2r0001111111111000
		2r0000111111111000
		2r0000111111111000)
	offset: 0@0))! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/22/2013 17:16'!
initialize
"
	self initialize.
"
	self initOpenHand.
	self initClosedHand.! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/27/2013 15:36'!
basicExtent: aPoint

	extent := aPoint! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/27/2013 16:28'!
minimumExtent

	^ 0 @ 0 ! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/27/2013 15:45'!
rect

	^ Rectangle origin: 0@0 corner: extent! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/30/2013 15:29'!
setPointSelectorsFromStartPoint: startPoint endPoint: endPoint
	"Reset both my start and end points -- points in owner coordinates"

	| origin corner rect |
	origin  := ((startPoint x) min: (endPoint x)) @ ((startPoint y) min: (endPoint y)).
	corner := ((startPoint x) max: (endPoint x)) @ ((startPoint y) max: (endPoint y)).
	
	rect := Rectangle origin: origin corner: corner. "Owner coordinates"

	(startPoint = rect topLeft)        ifTrue: [ startPointSelector := #topLeft ].
	(startPoint = rect topRight)       ifTrue: [ startPointSelector := #topRight ].
	(startPoint = rect bottomLeft)  ifTrue: [ startPointSelector := #bottomLeft ].
	(startPoint = rect bottomRight) ifTrue: [ startPointSelector := #bottomRight ].
	
	(endPoint = rect topLeft)         ifTrue: [ endPointSelector   := #topLeft ].
	(endPoint = rect topRight)        ifTrue: [ endPointSelector   := #topRight ].
	(endPoint = rect bottomLeft)   ifTrue: [ endPointSelector   := #bottomLeft ].
	(endPoint = rect bottomRight)  ifTrue: [ endPointSelector   := #bottomRight ].

	self basicExtent: rect extent.
	self morphPosition: rect topLeft.
	"@@DEBUG@@"
"	('SetArgs: startPoint: ', startPoint asString, ' endPoint: ', endPoint asString) print.
	('Result:    startPoint: ', self startPoint asString, ' endPoint: ', self endPoint asString) print.
"! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/27/2013 15:32'!
color

	^ color! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/27/2013 16:35'!
color: aColor

	(aColor class = Color) ifFalse: [ Error signal: 'Not a color: ', aColor printString ].

	color := aColor.
	self redrawNeeded ! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 19:11'!
endPoint
	"Answer my endPoint in owner's coordinates"

	^ (self rect perform: endPointSelector) + (self morphPosition) truncated ! !

!LineMorph methodsFor: 'accessing' stamp: 'jmv 9/29/2013 22:47'!
endPoint: aPoint
	"aPoint is in owner coordinates.  Set my startPoint in own coordinates"
	
	(aPoint isKindOf: Point) ifFalse: [ Error signal: 'Not a Point: ', aPoint printString ].
		
	self redrawNeeded.
	self setPointSelectorsFromStartPoint: self startPoint 
		  endPoint: aPoint.
	self redrawNeeded.! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 18:55'!
length

	^ self startPoint dist: self endPoint! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 16:23'!
lineWidth

	^ lineWidth ! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/30/2013 14:36'!
lineWidth: newWidthInPixels

	self redrawNeeded.
	lineWidth := newWidthInPixels.
	self redrawNeeded ! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 19:11'!
startPoint
	"Answer my startPoint in owner's coordinates"
	
	^ (self rect perform: startPointSelector) + (self morphPosition) truncated! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/30/2013 14:36'!
startPoint: aPoint
	"aPoint is in owner coordinates.  Set my startPoint in own coordinates"
	
	(aPoint isKindOf: Point) ifFalse: [ Error signal: 'Not a Point: ', aPoint printString ].
	
	self redrawNeeded.
	self setPointSelectorsFromStartPoint: aPoint 
		 endPoint: self endPoint.
	self redrawNeeded.! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/30/2013 14:36'!
startPoint: newStart endPoint: newEnd
	"Reset my start and end points (Nota Bene: points in owner coordinates)"

	(newStart isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', newStart printString ].
	(newEnd isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', newEnd printString ].

	self redrawNeeded.	
	self setPointSelectorsFromStartPoint: newStart endPoint: newEnd.
	self redrawNeeded.! !

!LineMorph methodsFor: 'drawing' stamp: 'KenD 9/27/2013 15:55'!
drawOn: aCanvas
	"Draw self in own coordinates"
	
	| rect |
	rect := self rect.
	aCanvas
		line: (rect perform: startPointSelector)
		to:  (rect perform: endPointSelector)
		width: lineWidth
		color: color! !

!LineMorph methodsFor: 'initialization' stamp: 'KenD 9/27/2013 15:54'!
initialize

	super initialize.
	extent := 100@180.
	startPointSelector := #topLeft.
	endPointSelector   := #bottomRight.
	lineWidth := 6.
	color := Color cyan.
	! !

!LineMorph methodsFor: 'geometry testing' stamp: 'KenD 9/26/2013 15:39'!
isOrthoRectangularMorph

	^ false! !

!LineMorph methodsFor: 'geometry' stamp: 'KenD 9/27/2013 16:29'!
morphExtent
	"Answer an extent which includes me, taking into account my lineWidth"

	^ extent + lineWidth + lineWidth! !

!LineMorph methodsFor: 'geometry' stamp: 'KenD 9/27/2013 16:28'!
morphExtent: aPoint 
	"Set the receiver's extent to value provided. Honor my minimumExtent."

	| innerExtent |
	innerExtent := aPoint - lineWidth - lineWidth.
	extent = innerExtent ifTrue: [^ self ].
	self redrawNeeded.
	extent _ (innerExtent max: self minimumExtent).
	self redrawNeeded! !

!LineMorph methodsFor: 'geometry' stamp: 'KenD 2/28/2015 11:31'!
morphExtentInWorld: newExtent
	"world coordinates"
	self flag: #jmvVer2.
	self morphExtent: (self internalizeDistanceFromWorld: newExtent)! !

!LineMorph methodsFor: 'initialize-release' stamp: 'KenD 9/30/2013 15:25'!
startPoint: startPoint endPoint: endPoint width: numPixels color: aColor

	lineWidth := numPixels.
	color       := aColor.
	self setPointSelectorsFromStartPoint: startPoint endPoint: endPoint.
	! !

!LineMorph class methodsFor: 'instance creation' stamp: 'KenD 9/26/2013 18:51'!
startPoint: start endPoint: end

	^ self new startPoint: start endPoint: end! !

!LineMorph class methodsFor: 'instance creation' stamp: 'KenD 9/26/2013 16:21'!
startPoint: start endPoint: end width: numPixels color: aColor

	^ self new startPoint: start endPoint: end width: numPixels color: aColor! !

!PointerLineMorph methodsFor: 'accessing' stamp: 'KenD 9/15/2016 16:25:30'!
endPointMorph
	
	^ endPointMorph! !

!PointerLineMorph methodsFor: 'accessing' stamp: 'KenD 12/12/2016 15:15:59'!
endPointMorph: aMorph
	
	self endPointMorph ifNotNil: [ :pointer | self removeMorph: pointer ].
	endPointMorph := aMorph.
	self addMorphFront: aMorph.
	self updateEndPoint.
! !

!PointerLineMorph methodsFor: 'initialization' stamp: 'KenD 9/15/2016 16:40:58'!
initialize

	super initialize.
	self endPointMorph:
		(WidgetMorph new 
			:: color: Color yellow; 
			borderColor: Color red; 
			borderWidth: 3; 
			morphExtent: 16@16; 
			yourself).
	self updateEndPoint.! !

!PointerLineMorph methodsFor: 'geometry' stamp: 'KenD 9/15/2016 16:28:43'!
morphExtent: newExtent

	super morphExtent: newExtent.
	self updateEndPoint.! !

!PointerLineMorph methodsFor: 'geometry' stamp: 'KenD 12/12/2016 15:21:19'!
setPointSelectorsFromStartPoint: startPoint endPoint: endPoint

	super setPointSelectorsFromStartPoint: startPoint endPoint: endPoint.
	self updateEndPoint ! !

!PointerLineMorph methodsFor: 'geometry' stamp: 'KenD 9/15/2016 17:01:11'!
updateEndPoint
	"Place my pointer morph at my endpoint, centered"
	
	| pointMorphCenter endPointOffset |
	pointMorphCenter := (self endPointMorph morphExtent) / 2.
	endPointOffset := (self rect perform: endPointSelector) + (self lineWidth / 2).
	self endPointMorph morphPosition: endPointOffset - pointMorphCenter.! !

!PalletLayoutMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 5/11/2019 01:39:50'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^ aMorph copy   "Note PartsBinMorph>>aboutToGrab: "
	! !

!PalletLayoutMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/14/2013 15:59'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. Redefined to answer true."

	^ true! !

!PalletLayoutMorph methodsFor: 'layout' stamp: 'KenD 5/31/2020 17:40:07'!
shrinkWrap
	"Resize self to minimally contain submorphs with specified separation"
	
	| width height sep |
	((self direction) = #horizontal) "(a row)"
		ifTrue:  [
			sep := self xSeparation.
			width := sep + 
				(self submorphs 
					inject: 0 
					into: [ :subTotal :m |  subTotal + (m morphExtent x) + sep ]).
			sep := 2 * self ySeparation.
			height := 
				(self submorphs 
					inject: 10 
					into: [ :maxHeight :m |  maxHeight max: (m morphExtent y) + sep ]).
			self layoutSpec: 
					(LayoutSpec 
							fixedWidth: width
							fixedHeight: height
							offAxisEdgeWeight: #rowTop)
		]
		ifFalse: [ " vertical  (a column)"
			sep := 2 * self xSeparation.
			width := 
				(self submorphs 
					inject: 10 
					into: [ :maxWidth :m |  maxWidth max: (m morphExtent x) + sep ]).
			sep := self ySeparation.
			height := sep + 
				(self submorphs 
					inject: 0 
					into: [ :subTotal :m |  subTotal + (m morphExtent y) + sep ]).
			self layoutSpec: 
					(LayoutSpec 
							fixedWidth: width 
							fixedHeight: height
							offAxisEdgeWeight: #columnLeft)
		].

	self morphExtent: width @ height.
	self layoutSubmorphs.! !

!PalletLayoutMorph class methodsFor: 'new-morph participation' stamp: 'KenD 9/15/2013 16:40'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	^ false! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/24/2013 16:55'!
buttonFor: aSymbol
	"Return aRadioButton corresponding to selector"
	
	| symbols row |
	symbols := self list.
	row :=  submorphs at: ((symbols size) + 1 - (symbols indexOf: aSymbol ifAbsent: [ ^nil ])).
	^ row submorphs detect: [ :s | s class == RadioButtonMorph ] ifNone: [ nil ]! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 21:02'!
buttonOnLeft

	^ buttonOnLeft ! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/20/2013 13:56'!
buttons

	^ buttons! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/20/2013 13:56'!
buttons: arrayOfRadioButtons

	buttons := arrayOfRadioButtons.! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 19:46'!
font

	^ font! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 19:45'!
labelStrings

	^ self list collect: [ :each | each asString ]! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 19:45'!
list
	"Answer my array of label symbols"

	^ list! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 6/1/2020 15:09:50'!
list: arrayOfSymbols
	"Set up my submorphs from arrayOfSymbols"

	| maxStringWidth labelLayout buttonList labelList |
	maxStringWidth := 0.
	self removeAllMorphs; "Don't keep old stuff."
		 setList: arrayOfSymbols.
	buttonList  := OrderedCollection new.
	labelList    := OrderedCollection new.
	arrayOfSymbols do: [ :labelSym | | newRow label button |
		newRow := LayoutMorph newRow.
		newRow separation: 2; color: Color transparent; axisEdgeWeight: #rowLeft.
		button := (RadioButtonMorph ofSize: RadioButtonMorph defaultDiameter).
		button layoutSpec: (LayoutSpec keepMorphExtent).
		label := LabelMorph contents: labelSym asString font: self font.
		maxStringWidth := maxStringWidth max: (self font widthOfString: labelSym).
		(self buttonOnLeft)
			ifTrue: [ newRow  addMorph: button; addMorph: label ] 
			ifFalse: [ newRow addMorph: label; addMorph: button ].
		buttonList add: button.
		labelList add: label.
		self 
			addMorph: newRow

	].
	self buttons: buttonList asArray.
	self buttons do: [ :b | b when: #radioSelection send: #newSelection: to: self ].
	
	"Make all labels have same width"
	labelLayout := LayoutSpec 
			fixedWidth: maxStringWidth + 4
			fixedHeight: (RadioButtonMorph defaultDiameter max: self font lineSpacing) + 4
			offAxisEdgeWeight: #center.
	labelList do: [ :label | label layoutSpec: labelLayout ].
"	self layoutSpec: (LayoutSpec fixedHeight: self naturalHeight). "

! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:18'!
rowFor: aSymbol
	"My rows are submorphs inversly ordered from my list"
	
	| symbols |
	symbols := self list.

	^ self submorphs at: ((symbols size) + 1 - (symbols indexOf: aSymbol ifAbsent: [ ^nil ]))! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/20/2013 14:49'!
symbolForButton: radioButton

	^ self list at: (self buttons indexOf: radioButton)! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/20/2013 15:05'!
buttonOnLeft: aBoolean

	buttonOnLeft := aBoolean ! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/19/2013 19:48'!
fromList: arrayOfSymbols

	self list: arrayOfSymbols ! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 6/1/2020 15:05:24'!
initialize
	"Initialize self to harmless values"
	
	super initialize.
	self setList: #(); "see #list: setter"
		 setFont: Preferences standardButtonFont;
		 buttonOnLeft: true;
		 separation: 2@2;
		 color: Color transparent! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/20/2013 15:06'!
setFont: aFont

	font := aFont ! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/20/2013 15:06'!
setList: arrayOfSymbols

	list := arrayOfSymbols ! !

!RadioGroup methodsFor: 'geometry' stamp: 'KenD 4/28/2019 18:54:06'!
calculateMinimumExtent

	| minExtent |
	minExtent := super calculateMinimumExtent.
	^ (minExtent x) @ (minExtent y max: self naturalHeight)! !

!RadioGroup methodsFor: 'geometry' stamp: 'jmv 4/25/2019 10:08:01'!
naturalHeight
	"Answer the combined heights of my elements"
	
	^ 4 + ((self list size) * (2 + ((self font lineSpacing) max: (RadioButtonMorph defaultDiameter))))! !

!RadioGroup methodsFor: 'events-processing' stamp: 'KenD 5/22/2020 13:52:21'!
fontPreferenceChanged

	| labelStrings maxStringWidth labelLayoutSpec |
	super fontPreferenceChanged.
	self setFont: Preferences standardButtonFont.
	maxStringWidth := 3. "minimum"
	labelStrings := self labelStrings.
	labelStrings do: [ :str |
		maxStringWidth := maxStringWidth max:  (self font widthOfString: str)
	].
	labelLayoutSpec := 
			LayoutSpec 
					fixedWidth: maxStringWidth + 4
					fixedHeight: self font lineSpacing + 2
					offAxisEdgeWeight: #center. 
	self submorphsDo: [ :selectLine |
		selectLine submorphsDo: [ :aMorph |
			(aMorph respondsTo: #setFont:)
				ifTrue: [ aMorph setFont: Preferences standardButtonFont ].
			(aMorph respondsTo: #font:)
				ifTrue: [ aMorph font: Preferences standardButtonFont ].
			((aMorph isKindOf: LabelMorph)
			  and: [labelStrings includes: aMorph contents])
				ifTrue: [ aMorph layoutSpec: labelLayoutSpec ].
		]
	].! !

!RadioGroup methodsFor: 'events-processing' stamp: 'KenD 11/20/2013 15:11'!
newSelection: radioButton

	"Unselect other buttons"
	self buttons do: [ :b | b == radioButton ifFalse: [ b isSelected: false ] ].
	self triggerEvent: #informRadioSelection with: (self symbolForButton: radioButton)
	! !

!RadioGroup methodsFor: 'events-processing' stamp: 'KenD 11/25/2013 19:29'!
unselectAll

	self buttons do: [ :b | b isSelected: false ].
	self redrawNeeded 
	! !

!RadioGroup class methodsFor: 'class initialization' stamp: 'KenD 11/19/2013 19:38'!
fromList: buttonLables
	"Add label list as array of symbols to a new instance of me"

	| listOfSymbols |
	listOfSymbols := OrderedCollection new.
	buttonLables do: [ :each | listOfSymbols add: each asSymbol ].
	
	^ self newColumn fromList: listOfSymbols asArray ! !

!RadioGroup class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:07'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!WindowTitleMorph methodsFor: 'buttons' stamp: 'KenD 3/9/2020 16:20:33'!
addButton: nameSym action: actionSym baloonText: toolHelpString themeName: iconName

	"add a a button morph to me"
	| button |
	button := PluggableButtonMorph model: self action: actionSym.
	button
		icon: ((Theme current perform: iconName) magnifyTo: self boxExtent) ;
		setBalloonText: toolHelpString;
		iconName: nameSym;
		morphExtent: self boxExtent.
		
	self addMorph: button
	! !

!WindowTitleMorph methodsFor: 'buttons' stamp: 'KenD 4/24/2015 08:01'!
buttonNamesShown

	| names |
	names := OrderedCollection new.

	self submorphsDo: [ :aMorph |
		((aMorph isKindOf: PluggableButtonMorph) 
		  and: [ aMorph visible ])
			ifTrue: [ names add: aMorph iconName ]
	].

	^ names! !

!WindowTitleMorph methodsFor: 'buttons' stamp: 'KenD 4/24/2015 07:52'!
hideButtons

	self submorphsDo: [ :m | (m isKindOf: PluggableButtonMorph) ifTrue: [ m hide ] ]! !

!WindowTitleMorph methodsFor: 'buttons' stamp: 'KenD 8/25/2015 19:34'!
rescaleButtons
	"boxExtent changed.  Update my buttons."
	| buttonExtent |
	buttonExtent := self boxExtent .
	self submorphsDo: [ :aMorph |
		(aMorph isKindOf: PluggableButtonMorph) 
		  ifTrue: [ aMorph morphExtent: buttonExtent ].
	].
! !

!WindowTitleMorph methodsFor: 'buttons' stamp: 'KenD 4/24/2015 07:56'!
showButtonsNamed: aSymbolColleciton

	aSymbolColleciton 
			do: [ :aName |
				(self buttonNamed: aName)
					ifNotNil: [ :aButton | aButton show ]
			].
! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 3/9/2020 16:09:20'!
boxExtent
	"answer the extent to use in all the buttons. 
	 
	the label height is used to be proportional to the fonts preferences"
	| e |
	e _ Preferences windowTitleFont pointSize.
	^e@e! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 4/23/2015 17:01'!
buttonNamed: aSymbol

	^ self submorphs  
		detect: [ :aMorph | 
			(aMorph isKindOf: PluggableButtonMorph) 
				and: [ aMorph iconName = aSymbol ] 
		]
		ifNone: [ ^ nil ]! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 4/23/2015 16:28'!
color
	"I take on the color of my title bar"

	^ Color transparent ! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 1/28/2016 16:06'!
height

	^ self morphExtent y! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 4/23/2015 17:01'!
pinButton

	^ self buttonNamed: #pin! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 4/23/2015 18:36'!
titleString

	^ titleString ! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 4/24/2015 15:51'!
titleString: aString
	"Remember titleString and set up submorphs"

	titleString := aString.
	self reset! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 5/25/2020 14:09:43'!
titleStringForDisplay
	"Answer a string scaled to fit"
	
	| titleWidth desiredWidth myTitleString |
	myTitleString := self titleString.
	titleWidth := Preferences windowTitleFont widthOfString: myTitleString.
	desiredWidth := (self morphWidth - (self minimumButtonsExtent x)) max: 20.
	^ (titleWidth <= desiredWidth)
		ifTrue: [ myTitleString ]
		ifFalse: [ myTitleString squeezedTo: (myTitleString size * (desiredWidth / titleWidth)) rounded]! !

!WindowTitleMorph methodsFor: 'accessing' stamp: 'KenD 1/28/2016 16:07'!
width

	^ self morphExtent x! !

!WindowTitleMorph methodsFor: 'geometry' stamp: 'KenD 8/26/2015 12:23'!
buttonSeparation

	^ 4@0! !

!WindowTitleMorph methodsFor: 'geometry' stamp: 'KenD 5/25/2020 14:13:49'!
minimumButtonsExtent

	| width height numButtons |
	numButtons := self buttonNamesShown size.
	height := self boxExtent y + 4.
	"Note: separation between each button + two ends"
	width := (numButtons * self boxExtent x) + (numButtons + 2 * self buttonSeparation x).
	^ width @ height! !

!WindowTitleMorph methodsFor: 'geometry' stamp: 'KenD 11/23/2016 14:52:05'!
minimumExtent

	| minButtonExt minTitleExt |
	minButtonExt :=  self minimumButtonsExtent.
	minTitleExt    := self minimumTitleExtent.
	^ (minButtonExt x + minTitleExt x) 
     	   @ (minButtonExt y max: minTitleExt y)! !

!WindowTitleMorph methodsFor: 'geometry' stamp: 'jmv 4/25/2019 10:08:37'!
minimumTitleExtent
	"My titleString can shrink a bit but not completely"
	| font |
	font := Preferences windowTitleFont.

	"Keep space for 8 characters"
	^ (8 * (font widthOf: $A)) @ (4 + font lineSpacing)
	! !

!WindowTitleMorph methodsFor: 'geometry' stamp: 'KenD 8/25/2015 19:45'!
morphExtent: newExtent

	super morphExtent: newExtent.
	self reset! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 4/23/2015 16:21'!
closeButtonClicked
	"Delegate action to owner"
	
	self owner closeButtonClicked
! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 4/23/2015 16:21'!
collapseButtonClicked	"Delegate action to owner"

	self owner collapseButtonClicked
! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 4/23/2015 16:30'!
expandButtonClicked
	"Delegate action to owner"
	
	self owner expandButtonClicked
! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 10/30/2015 08:06'!
fontPreferenceChanged

  super fontPreferenceChanged.
  self reset.
	! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 4/23/2015 16:21'!
pinButtonClicked
	"Delegate action to owner"
		
	self owner pinButtonClicked 
	! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 10/30/2015 08:02'!
reset
	"Remove old and place new tItle and button Morphs"
	
	| buttonsShown |
	buttonsShown := self buttonNamesShown.
	self removeAllMorphs. "Clear out old morphs"
	
   #( ( close  closeButtonClicked 'close this window' closeIcon )
	   ( collapse collapseButtonClicked 'collapse this window' collapseIcon )
	   ( expand expandButtonClicked 'expand this window' expandIcon )
	   ( windowMenu windowMenuButtonClicked 'window menu' windowMenuIcon )
	   ( showHalo showHaloButtonClicked 'show target halo' doItIcon  )
"	   ( pin pinButtonClicked 'pin me (don''t close)' pushPinIcon )  ADD AFTER TLTLE (below)"
	) do: [ :rowArgs | 
		self perform: #addButton:action:baloonText:themeName: 
		withArguments: rowArgs ].
	
	self addMorph: (LabelMorph 
						contents: self titleStringForDisplay 
						font: Preferences windowTitleFont ).
	
	self  
		addButton: #pin 
		action: #pinButtonClicked 
		baloonText:  'pin (keep) this window' 
		themeName: #pushPinIcon .
		
	self hideButtons.
	self showButtonsNamed: buttonsShown.
	
	self layoutSpec: (LayoutSpec 
							proportionalWidth: 1  
							fixedHeight: (self minimumExtent y) )
	! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 7/4/2015 15:22'!
showHaloButtonClicked
	"Delegate action to owner"
		
	self owner showHaloButtonClicked 
	! !

!WindowTitleMorph methodsFor: 'event handling' stamp: 'KenD 4/23/2015 16:31'!
windowMenuButtonClicked
	"Delegate action to owner"
	
	self owner windowMenuButtonClicked
! !

!WindowTitleMorph methodsFor: 'initialization' stamp: 'KenD 8/26/2015 12:23'!
initialize

	super initialize.
	titleString := 'Untitled'.
	self morphPosition: 0@0;
	      separation: self buttonSeparation.! !

!WindowTitleMorph methodsFor: 'initialization' stamp: 'KenD 10/30/2015 08:04'!
title: aString buttonsNamed: aSymbolColleciton
	"Set me up"
	
	self titleString: aString. "places title and buttons"
	aSymbolColleciton 
			do: [ :aName |
				(self buttonNamed: aName)
					ifNotNil: [ :aButton | aButton show ]
			].
	self reset.
! !

!WindowTitleMorph class methodsFor: 'accessing' stamp: 'KenD 7/4/2015 14:40'!
buttonNames

	^ #( close collapse expand windowMenu pin showHalo )! !

!WindowTitleMorph class methodsFor: 'new-morph participation' stamp: 'KenD 4/28/2015 18:45'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	^ false! !

!WindowTitleMorph class methodsFor: 'instance creation' stamp: 'KenD 4/23/2015 17:05'!
title: aString

	^ self title: aString buttonsNamed: #()! !

!WindowTitleMorph class methodsFor: 'instance creation' stamp: 'KenD 4/28/2019 18:57:20'!
title: aString buttonsNamed: aSymbolCollection

	((self buttonNames) includesAllOf: aSymbolCollection)
		ifFalse: [ | stdNames outliers |
			stdNames := self buttonNames.
			outliers := aSymbolCollection reject: [ :aName | stdNames includes: aName ].
			self error: 'Bad button name(s): ', outliers printString 
		].
	^ (self newRow) title: aString buttonsNamed: aSymbolCollection
! !

!ClickColorMorph methodsFor: 'event handling testing' stamp: 'KenD 2/29/2020 09:22:26'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"
	^true! !

!ClickColorMorph methodsFor: 'event handling' stamp: 'jmv 1/5/2021 14:26:15'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition

	| colorSetters choices |

	(self containsGlobalPoint: aMouseButtonEvent eventPosition)
		ifFalse: [ ^self ]. "Stay up"
			
	colorSetters := (((colorTargetMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorTargetMorph class == Morph) 
		ifTrue: [
			PopUpMenu inform: 'My color attribute cannot be set ', self printString 
			^ self
		].
		
	(colorSetters size = 1)
		ifTrue: [ colorTargetMorph targetMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				colorTargetMorph 
						perform: (colorSetters at: selection - 1) 
						with: self color;
						triggerEvent: #propertyChanged.
			]
		].

	colorTargetMorph redrawNeeded.
	self closeContainingPanel: self owner.
! !

!ClickColorMorph methodsFor: 'initialization' stamp: 'KenD 2/29/2020 09:17:41'!
fromColor: aColor forTarget: aMorph

	colorTargetMorph := aMorph. "immutable"
	self 
		color: aColor;
		image: (self color icon magnifyTo: 32@32)
	! !

!ClickColorMorph methodsFor: 'closing' stamp: 'KenD 2/29/2020 13:43:18'!
closeContainingPanel: nextOwner
	"After user selection, I need to close my containing Panel; chain up to find it"

	(nextOwner is: #Panel) 
		ifTrue: [ nextOwner closeButtonClicked ] 
		ifFalse: [
			nextOwner 
				ifNil: [ ^self ] 
				ifNotNil: [ self closeContainingPanel: nextOwner owner]
		]! !

!ClickColorMorph class methodsFor: 'instance creation' stamp: 'KenD 2/29/2020 09:15:05'!
fromColor: aColor forTarget: aMorph
"
	(DropColorMorph fromColor: Color teal) openInHand.
"

	^ self new fromColor: aColor forTarget: aMorph! !

!ClickColorMorph class methodsFor: 'new-morph participation' stamp: 'KenD 2/29/2020 12:58:24'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 20:07'!
aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^ self class fromColor: self color "Grab a new sibling of me"! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 20:15'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^ self class fromColor: aMorph color   "Pick up a copy of me"! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/23/2016 14:40:29'!
dropAction: aDropTargetMorph
	"Set a color"

	| colorSetters choices |
	colorSetters := (((aDropTargetMorph targetMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorSetters size = 1)
		ifTrue: [ aDropTargetMorph targetMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			self delete. "Remove me from hand so user can choose"
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				aDropTargetMorph targetMorph 
						perform: (colorSetters at: selection - 1) 
						with: self color;
						triggerEvent: #propertyChanged.
			]
		].

	aDropTargetMorph refreshSubmorphs.! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/13/2016 19:43:45'!
rejectDropMorphEvent: evt
	"Rejected drop of me.  Remove me from the hand."
	
	self hide; delete.
	self world ifNotNil: [ :w | w activeHand removeMorph: self ]
! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/6/2016 18:55:26'!
valueWhenDropped

	^ self color! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/23/2016 14:39:49'!
wantsToBeDroppedInto: aMorph
	"I wish to be dropped on a DropTargeMorph"

	(aMorph isKindOf: DropTargetMorph)
		ifTrue: [ self dropAction: aMorph ].
		
	(aMorph valueOfProperty: #dropAction ifAbsent: [ nil ])
		ifNotNil: [ :dropAction | 
					dropAction value: aMorph value: self color.
					self rejectDropMorphEvent: nil. 
				 ].
				
	^ false  "Default is to be rejected after doing the drop action"! !

!DropColorMorph methodsFor: 'initialization' stamp: 'KenD 12/24/2013 17:03'!
fromColor: aColor

	self 
		color: aColor;
		image: (self color icon magnifyTo: 32@32)
	! !

!DropColorMorph methodsFor: 'initialization' stamp: 'KenD 12/13/2016 17:54:27'!
initialize

	super initialize.
	self setProperty: #DropActionMorph toValue: #setColor:! !

!DropColorMorph class methodsFor: 'instance creation' stamp: 'KenD 7/24/2015 11:20'!
fromColor: aColor
"
	(DropColorMorph fromColor: Color teal) openInHand.
"

	^ self new fromColor: aColor ! !

!DropColorMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!ImagePallet methodsFor: 'private' stamp: 'KenD 11/23/2016 14:19:14'!
calculatedExtent

	^ calculatedExtent! !

!ImagePallet methodsFor: 'private' stamp: 'KenD 11/24/2016 09:07:36'!
calculatedExtent: aPointExtent

	calculatedExtent := aPointExtent.
	self morphExtent: calculatedExtent ! !

!ImagePallet methodsFor: 'private' stamp: 'KenD 9/13/2013 20:08'!
processImage: anImage

	^ imageFilter value: anImage

	! !

!ImagePallet methodsFor: 'private' stamp: 'KenD 11/23/2016 19:28:26'!
spaceWidth
	"Answer the space in pixels between images"
	
	^ 2! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 9/14/2013 16:04'!
collection: aNameImageCollection
	"The default filter is the identity function"
	
	self collection: aNameImageCollection filter: [ :any | any ] 
! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 5/12/2020 16:46:58'!
collection: aNameImageCollection filter: imageSelector

	| numImages maxWidth numAcross numDown spacedExtent |
	nameImageCollection := aNameImageCollection.
	imageFilter := imageSelector.
	
	numImages := aNameImageCollection size.
	numImages isZero ifTrue: [Error signal: 'I require a non-empty collection to display!!'].
	numImages> 1000 ifTrue: [Error signal: 'Collection too large to display safely'].
	"@@FIXME: assumes all images same size@@"
	self imageExtent: 
		(self processImage: (aNameImageCollection anyOne value)) morphExtent.

	maxWidth := (DisplayScreen actualScreenSize x) // 1.2.
	spacedExtent := imageExtent + self spaceWidth.

	numAcross := (((maxWidth - self spaceWidth) // spacedExtent x) 
						max: 1) min: numImages.
	numDown := (numImages / numAcross) ceiling.
	((numDown < 3) and: [numAcross > 40])
		ifTrue: [ numAcross := 40. numDown := (numImages / numAcross) ceiling.].
"
Transcript show: 'numAcross: ', (numAcross asString), '  numDown: ', (numDown asString)
	; newLine.
"
	self calculatedExtent:  
			(((self imageWidth + self spaceWidth) * numAcross)
							@ ((self imageHeight + self spaceWidth) * numDown))
							+ (2 * self spaceWidth). "frame"
"
Transcript show: 'calculatedExtent: ', (self calculatedExtent asString)
	; newLine.
"
	self layoutImages: numAcross extent: self calculatedExtent.


! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 3/19/2016 18:59'!
initialize

	super initialize.
	(self scroller)
		color: Theme current background;
		layoutSpec: LayoutSpec useAll.
	self 
		layoutSpec: LayoutSpec useAll;
		yourself! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 5/31/2020 17:32:15'!
layoutImages: numAcross extent: layoutExtent

	"Lay out images in self"
	| column nextRow count rowLayoutSpec |
	rowLayoutSpec := LayoutSpec 
							fixedWidth: layoutExtent x  
							fixedHeight: self imageHeight
							offAxisEdgeWeight: #columnLeft.
							
	column := LayoutMorph newColumn.
	column separation:    self spaceWidth;
			 morphExtent: self calculatedExtent;
			 axisEdgeWeight: #columnTop.

	count := -1.
	self nameImageCollection do: [ :nameImageAssoc |
			| name image imageMorph |
		     name  := nameImageAssoc key.
			image := nameImageAssoc value.
			count := count + 1.  "Row count"
			(count \\ numAcross) isZero ifTrue: [ "Start a new Row"
				nextRow := PalletLayoutMorph newRow separation: (self spaceWidth @ 0).
				nextRow layoutSpec: rowLayoutSpec.
				column addMorph: nextRow.
			].
			imageMorph := self processImage: image.
			imageMorph setBalloonText: name asString.
			nextRow addMorph: imageMorph.
	].
	"Don't spread out morphs in the last row"
	((nextRow submorphs size) > 0) ifTrue: [ nextRow shrinkWrap.].
	column addMorph: nextRow. "add last row"
	column layoutSpec: (LayoutSpec
							fixedWidth: self imageWidth
							fixedHeight: layoutExtent y 
							offAxisEdgeWeight: #columnLeft).
	self addToScroller: column.
	self hideOrShowScrollBars.


! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 12/6/2016 19:04:41'!
getMenu

	^ nil! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 11/23/2016 19:40:19'!
imageExtent: aPointExtent

	imageExtent := aPointExtent ! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 11/23/2016 19:39:55'!
imageHeight

	^ imageExtent y! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 11/23/2016 19:39:46'!
imageWidth

	^ imageExtent x! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 3/9/2020 14:33:58'!
minimumExtent

	"Widen calculated extent to avoid showing scroll bars"
	^ self calculatedExtent ifNil: [1@1] ifNotNil: [ :ext | ext + (Theme current scrollbarThickness // 2) ] ! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 9/14/2013 16:33'!
nameImageCollection

	^ nameImageCollection ! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 17:24'!
fromCollection: nameImageAssociations

	^ self basicNew initialize collection: nameImageAssociations! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/14/2013 16:31'!
fromCollection: nameImageAssociations imageFilter: aClosure

	^ self basicNew initialize collection: nameImageAssociations filter: aClosure ! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/13/2013 16:10'!
new

	Error signal: self name asString, ' requires a collection of name->image associations to instantiate'! !

!ImagePallet class methodsFor: 'new-morph participation' stamp: 'KenD 9/15/2013 16:40'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	^ false! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 2/29/2020 13:11:26'!
clickSelectColorsFor: aMorph
	"Click-Select from a ClickColorPallet"
	
	| pallet imagePanel sortedColors  |
	sortedColors := SortedCollection sortBlock: 
		 [ :aAssoc :bAssoc | | a b |
			a := aAssoc value.
			b := bAssoc value.
			(a hue < b hue) or: [(a hue = b hue) and: [a saturation < b saturation ]]
		].
	Color colorNamesDict associationsDo: [ :assoc | sortedColors add: assoc ].
	
	pallet := ImagePallet 
			fromCollection: sortedColors
			imageFilter: [:color | | clickColorMorph |
				clickColorMorph := ClickColorMorph fromColor: color forTarget: aMorph.
				clickColorMorph image: (color icon "magnifyTo: 20 @ 20");
					color: color;
					yourself
			].

	imagePanel := Panel new.
	pallet color: imagePanel windowColor paler.
	imagePanel addMorph: pallet;
		setLabel: 'Click to Select a Color for ', aMorph printString ;
	     showButtonsNamed: #( close  ).
	pallet hideOrShowScrollBars.
	imagePanel openInWorld. 
	"openInWorld resets extent"
	imagePanel morphExtent: (imagePanel minimumExtent).  "openInWorld resets extent"
	^ imagePanel! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 3/9/2020 14:37:33'!
largerIcons
"
	ImagePallet largerIcons.
"
	| ip sw sortedCollection someIcons |
	
	sortedCollection := SortedCollection sortBlock: [ :a :b | a key < b key].

	{ 'actions'. 'apps'. 'categories'. 'devices'. 'emblems'. 'emotes'. 
			'mimetypes'. 'places'. 'smalltalk'. 'status'. } 
		do: [ :category |
			someIcons := Theme content from: 'Theme' get: {'16x16'. category}.
			someIcons ifNotNil: [someIcons associationsDo: [:assoc| sortedCollection add: assoc]].
		].

	someIcons := (Theme content from: 'Theme' get: {'14x14'. 'buttons'}).
	someIcons ifNotNil: [someIcons associationsDo: [:assoc| sortedCollection add: assoc]].
"	sortedCollection addAll: (iconsCollection select: [ :assoc | assoc isNil not]).
"	
	ip := ImagePallet 
			fromCollection: (sortedCollection collect: [ :assoc | 
				Association key: (assoc key) value: assoc value
			])
			imageFilter: [:form | ImageMorph new image: (form magnifyTo: 32 @ 32)].

	sw := Panel new.
	sw addMorph: ip.
	ip color: sw windowColor paler.
	sw setLabel: 'Pick an Icon';
	showButtonsNamed: #( close collapse ).
	sw openInWorld.
	sw morphExtent: sw minimumExtent. "openInWorld resets extent" 
	^ sw! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 11/24/2016 08:52:03'!
namedColors
"	'Pick a ColorPallet'
	ImagePallet useCSS3ColorDict.                  
	ImagePallet useXKCDColorDict.
	ImagePallet useSmallColorDict.
	ImagePallet useCrayonColorDict.
	'Open a view on it'
	ImagePallet namedColors.
"
	| pallet imagePanel sortedColors  |
	sortedColors := SortedCollection sortBlock: 
		 [ :aAssoc :bAssoc | | a b |
			a := aAssoc value.
			b := bAssoc value.
			(a hue < b hue) or: [(a hue = b hue) and: [a saturation < b saturation ]]
		].
	Color colorNamesDict associationsDo: [ :assoc | sortedColors add: assoc ].
	
	pallet := ImagePallet 
			fromCollection: sortedColors
			imageFilter: [:color | | dropColorMorph |
				dropColorMorph := DropColorMorph new.
				dropColorMorph image: (color icon "magnifyTo: 20 @ 20");
					color: color;
					yourself
			].

	imagePanel := Panel new.
	pallet color: imagePanel windowColor paler.
	imagePanel addMorph: pallet;
		setLabel: 'Pick a Color';
	     showButtonsNamed: #( close collapse ).
	pallet hideOrShowScrollBars.
	imagePanel openInWorld. 
	"openInWorld resets extent"
	imagePanel morphExtent: (imagePanel minimumExtent).  "openInWorld resets extent"
	^ imagePanel! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 10/17/2018 22:58:59'!
namedIcons
"
	ImagePallet namedIcons.
"
	| ip sw iconsCollection sortedCollection |
	iconsCollection := OrderedCollection new. 
	{ 'actions'. 'apps'. 'categories'. 'devices'. 'emblems'. 'emotes'.
	  'mimetypes'. 'places'. 'smalltalk'. 'status'. } do: [ :category |
		iconsCollection addAll: (Theme content from: 'Theme' get: {'16x16'. category}) array.
	].
	sortedCollection := SortedCollection sortBlock: [ :a :b | a key < b key].
	sortedCollection addAll: (iconsCollection select: [ :assoc | assoc isNil not]).
	
	ip := ImagePallet 
			fromCollection: (sortedCollection collect: [ :assoc | 
				Association key: (assoc key) value: assoc value
			])
			imageFilter: [:form | ImageMorph new image: form].

	sw := Panel new.
	sw addMorph: ip.
	ip color: sw windowColor paler.
	sw setLabel: 'Pick an Icon';
	showButtonsNamed: #( close collapse ).
	sw openInWorld.
	sw 	morphExtent: sw minimumExtent.   "openInWorld algorithm resets extent"
	^ sw! !

!ImagePallet class methodsFor: 'examples' stamp: 'jmv 5/5/2019 16:19:08'!
strikeFonts
"
	ImagePallet strikeFonts.
	
	More StrikeFonts can be imported via 
		Feature require:  #'SF2-Import'.
	See Cuis-Smalltalk-SF2-Import file README.md for usage.
"
	| ip sw fontsCollection maxExtent aFont |
	fontsCollection := OrderedCollection new. 
	FontFamily familyNames do: [ :familyName |
		(FontFamily pointSizesFor: familyName) do: [ :aSize |
			aFont _ FontFamily familyName: familyName pointSize: aSize.
			(aSize <= 24) ifTrue: [
				fontsCollection add: 
					(Association 
						key: aFont name
						value: (FontMorph font: aFont))
			]
		]
	].

	maxExtent := 0@0.
	fontsCollection do: [ :assoc | maxExtent := maxExtent max: assoc value minimumExtent ].
	fontsCollection do: [ :assoc | |m | 
		m := assoc value. 
		m  morphExtent: maxExtent "(maxExtent x) @ (m morphExtent y)"
	].

	ip := ImagePallet 
			fromCollection: fontsCollection.
	sw := Panel new.
	sw addMorph: ip.
	ip color: sw windowColor paler.
	sw setLabel: 'Pick a Font';
	showButtonsNamed: #( close collapse ).
	sw openInWorld.
	sw 	morphExtent: sw minimumExtent.   "openInWorld algorithm resets extent"
	^ sw! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 5/10/2019 15:56:54'!
systemFonts
"
	ImagePallet  systemFonts.
"
	| ip sw fontsCollection maxExtent |
	fontsCollection := OrderedCollection new. 
	FontFamily familyNames do: [ :familyName |
		fontsCollection add: 
					(Association 
						key: familyName
						value: (FontMorph 
							font: (FontFamily familyName: familyName 
												  pointSize: FontFamily defaultPointSize)))
		
	].

	maxExtent := 0@0.
	fontsCollection do: [ :assoc | maxExtent := maxExtent max: assoc value minimumExtent ].
	fontsCollection do: [ :assoc | |m | 
		m := assoc value. 
		m  morphExtent: maxExtent "(maxExtent x) @ (m morphExtent y)"
	].

	ip := ImagePallet 
			fromCollection: fontsCollection.
	sw := Panel new.
	sw addMorph: ip.
	ip color: sw windowColor paler.
	sw setLabel: 'Pick a Font';
	showButtonsNamed: #( close collapse ).
	sw openInWorld.
	sw 	morphExtent: sw minimumExtent.   "openInWorld algorithm resets extent"
	^ sw! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 11/23/2016 15:09:28'!
useCSS3ColorDict
"
	ImagePallet useCSS3ColorDict.
"
	Feature require: 'CSS3-NamedColors'.
	Color setColorNamesDict: Color css3ColorDictionary.! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 11/23/2016 15:10:34'!
useCrayonColorDict
"
	ImagePallet useCrayonColorDict.
"
	Feature require: 'Crayon-NamedColors'.
	Color setColorNamesDict: Color crayonColorDictionary.! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 11/23/2016 15:10:51'!
useNBSISCCColorDict
"
	ImagePallet useNBSISCCColorDict.
"

	Feature require: 'NBSISCC-NamedColors'.
	Color setColorNamesDict: Color nbsisccColorDictionary.! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 1/28/2016 15:10'!
useSmallColorDict
"
	ImagePallet useSmallColorDict.
"
	Color setColorNamesDict: Color defaultColorNamesDictionary.! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 11/23/2016 15:11:25'!
useXKCDColorDict
"
	ImagePallet useXKCDColorDict.
"
	Feature require: 'XKCD-NamedColors'.
	Color setColorNamesDict: Color xkcdColorDictionary.! !

!PickAColorPallet class methodsFor: 'new-morph participation' stamp: 'KenD 12/7/2016 08:28:49'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!PickAIconPallet class methodsFor: 'new-morph participation' stamp: 'KenD 12/7/2016 08:29:03'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!PickALargerIconPallet class methodsFor: 'new-morph participation' stamp: 'KenD 12/7/2016 08:29:12'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!MorphMessageBox methodsFor: 'initialization' stamp: 'KenD 9/30/2016 15:28:45'!
initialize

	super initialize.
	self morphExtent: self minimumExtent.! !

!MorphMessageBox methodsFor: 'geometry' stamp: 'KenD 9/30/2016 17:06:54'!
minimumExtent

	^ 700@(self boxExtent y * 2.3)! !

!MorphMessageBox class methodsFor: 'instance creation' stamp: 'KenD 9/30/2016 16:59:14'!
openForMorph: aMorph
"
	MorphMessageBox openForMorph: EllipseMorph initializedInstance.
"
	| morphName win work textModelMorph |
	morphName := aMorph nameForWorkspace.
	work := Workspace new contents: ''.
	win := self editText: work label: 'Message for ', morphName wrap: false.
	textModelMorph := win layoutMorph submorphs at: 1.
	win morphExtent: win minimumExtent.
	textModelMorph editor afterSelectionInsertAndSelect: morphName , ' '; 
	afterSelectionInsertAndSelect: ' '.
		"deselectAndPlaceCursorAt: (morphName size + 2) ."
	(win model  bindingOf: morphName) value: aMorph.
	win changed: #actualContents.
	win activateAndSendTopToBack: true.
	self runningWorld activeHand newMouseFocus: win.
	^win! !

!DropTargetMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/3/2013 19:33'!
allowsMorphDrop
	"Answer whether we accept dropping morphs. By default answer false."

	^ true! !

!DropTargetMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/3/2013 19:32'!
wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, which is being dropped by a hand in response to the given event. Note that for a successful drop operation both parties need to agree. The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self."

	^ (aMorph hasProperty: #DropActionMorph)! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 1/6/2016 09:56'!
createHaloBox
	^ (PluggableButtonMorph model: self action: #showHaloButtonClicked)
		icon: (Theme current doItIcon magnifyTo: self boxExtent);
		iconName: #showHalo;
		setBalloonText: 'show target halo' ;
		morphExtent: self boxExtent! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 7/4/2015 16:11'!
createMenuBox
	"Substitute a different button."
	"This avoids having a button on top of the window title."

	^ self createHaloBox ! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 12/3/2013 18:25'!
defaultBorderColor

	^ Color orange! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 12/3/2013 18:25'!
defaultColor
	"See through me"

	^ Color transparent! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 7/5/2015 15:20'!
initialize

	super initialize.
	self widgetsColor: self defaultBorderColor.

! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 7/24/2015 13:38'!
openFor: aMorph

	self targetMorph: aMorph.
	"Don't let Layout obfiscate view below"
	(self layoutMorph) color: (Color teal alpha: 0.3).

	"Nota Bene: must set my extent before asking about label"

	self 
		morphExtent: aMorph morphExtent + self boxExtent;
		setLabel: ('DropTarget: ', (aMorph printStringLimitedTo: 64));
		openInWorld; "Ignores settings; RESET them!!!!"
		morphPosition: aMorph morphPositionInWorld - self boxExtent ;
		morphExtent: aMorph morphExtent + self boxExtent;
		color: (Color teal alpha: 0.3);
		refreshSubmorphs;
		yourself
	
! !

!DropTargetMorph methodsFor: 'morphIt' stamp: 'KenD 7/5/2015 07:02'!
refreshSubmorphs
	"remove submorphs and get 'em back"
"
	| curPos deltaX deltaY myExtent|
	curPos := self borderWidth @ self borderWidth.
	deltaX := deltaY := 40.  ""Large Icon Size including border""
	myExtent := self morphExtent max: 80@240.
"
	self layoutMorph removeAllMorphs. 
	"(MorphMorph modifiersOf: self targetMorph) "
	(self targetMorph valueOfProperty: #morphModifiers  ifAbsent: [ nil ])
		ifNotNil: [ :modifiers | modifiers do: 
			[ :m | 
				m ifNotNil: [
					self addMorph: m layoutSpec: LayoutSpec keepMorphExtent .
					m show.
"
					m morphPosition: curPos.
					(curPos x + deltaX > myExtent x)
						ifTrue: [ curPos := self borderWidth @ (curPos y + deltaY) ]
						ifFalse: [ curPos := (curPos x + deltaX) @ curPos y ].
"
"					Transcript newLine; show: 'SubM curPos: ', curPos printString .
"
				]
			]
		].
	self layoutMorph layoutSubmorphs .
	self redrawNeeded.
	! !

!DropTargetMorph methodsFor: 'event handling' stamp: 'KenD 7/27/2015 16:25'!
showHaloButtonClicked

	| aMorph |
	aMorph := self model.
	
	(aMorph isInWorld)
	ifTrue: [aMorph show; addHalo ]
	ifFalse: [
		(HoverHelpMorph 
			contents: aMorph printString , ' not shown in world')
				popUpForHand: self  world activeHand
	]! !

!DropTargetMorph methodsFor: 'access' stamp: 'KenD 7/4/2015 15:53'!
targetMorph

	^ self model! !

!DropTargetMorph methodsFor: 'access' stamp: 'KenD 7/4/2015 16:34'!
targetMorph: aMorph

	self model: aMorph! !

!DropTargetMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!DropTargetMorph class methodsFor: 'instance creation' stamp: 'KenD 12/3/2013 18:40'!
openFor: aMorph

	^ self basicNew initialize openFor: aMorph ! !

!PluggableScrollBar methodsFor: 'initialization' stamp: 'KenD 8/26/2015 12:27'!
fontPreferenceChanged

	super fontPreferenceChanged.
	slider morphExtent: self buttonExtent @ self buttonExtent.! !

!PluggableScrollBar methodsFor: 'initialization' stamp: 'KenD 11/26/2013 21:12'!
initialize

	super initialize.
	slider morphExtent: self buttonExtent @ self buttonExtent.! !

!PluggableScrollBar methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:44'!
model: thang setValueSelector: setValueSym refreshValueSelector: getValueSym

	model := thang.
	setValueSelector := setValueSym.
	refreshValueSelector := getValueSym ! !

!PluggableScrollBar methodsFor: 'model access' stamp: 'KenD 11/25/2013 18:42'!
refreshValueFromModel
	"Called externally to reset value from model"

	refreshValueSelector ifNotNil: [
		self value:  (model perform: refreshValueSelector) ]! !

!PluggableScrollBar class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!Panel methodsFor: 'submorphs-add/remove' stamp: 'KenD 12/9/2013 16:44'!
addMorph: aMorph 
	"Add a submorph to our client area."

	layoutMorph addMorph: aMorph! !

!Panel methodsFor: 'submorphs-add/remove' stamp: 'KenD 12/9/2013 16:44'!
addMorph: aMorph layoutSpec: aLayoutSpec
	"Add a submorph to our client area."

	layoutMorph addMorph: aMorph layoutSpec: aLayoutSpec! !

!Panel methodsFor: 'submorphs-add/remove' stamp: 'KenD 12/18/2013 19:36'!
replaceArea: oldArea with: newArea
	"Replace oldArea in its container with newArea and clean up any ActionMaps"
	
	oldArea owner replaceSubmorph: oldArea by: newArea.
	oldArea releaseActionMap.
	self model removeActionsWithReceiver: oldArea.
	oldArea submorphsDo: [ :sm | 
		sm releaseActionMap.
		self model removeActionsWithReceiver: sm
	].

! !

!Panel methodsFor: 'drawing' stamp: 'KenD 9/5/2020 14:04:08'!
addPossiblyUncoveredAreasIn: aRectangle to: aCollection
	"Answer an array of rectangles encompassing those areas in aRectangle not completely
	covered by self. These are the areas that might require further drawing (of morphs below us)
	All areas that might possibly be uncovered must be included."
	 | r |
	self visible ifFalse: [ ^self ].
	
	color mightBeTranslucent ifTrue: [
		aCollection add: aRectangle.
		^self ].

	"Solid rectangle.
	This will be the fastest in many cases. So, please disable rounded corners if on slow hardware!!"
	Theme current roundWindowCorners ifFalse: [
		aRectangle areasOutside: self displayBounds do: [ :rr |  aCollection add: rr ].
		^self ].

	"The solid rectangle does not include the corners.
	Report a couple of rows (top and bottom) or columns (left and right) as uncovered areas.
	We could also try to be more careful and answer each rounded corner...
	Right now, report top and bottom rows as uncovered areas"
	r _ Theme current roundedWindowRadius.
	aRectangle areasOutside: (self displayBounds insetBy: 0@r) do: [ :rr |  aCollection add: rr ]! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
drawClassicFrameOn: aCanvas color: titleColor
	"Window border encompasses title area. No round corners. No title gradient."

	aCanvas fillRectangle: (0@0 extent: extent) color: color borderWidth: borderWidth borderStyleSymbol: #simple baseColorForBorder: self widgetsColor.

	"A border was drawn at the left, top and right of the title area.
	The look is that the title area is inside the window"
	aCanvas fillRectangle: (borderWidth@borderWidth extent: extent x - (2*borderWidth)@ self labelHeight) color: titleColor! !

!Panel methodsFor: 'drawing' stamp: 'KenD 4/27/2019 13:37:25'!
drawOn: aCanvas

	| titleColor roundCorners |

	titleColor _ self widgetsColor.
	roundCorners _ Theme current roundWindowCorners.
	roundCorners
		ifTrue: [
			"Round corners. Optional title gradient."
			self drawRoundedFrameOn: aCanvas color: titleColor ]
		ifFalse: [
			"No round corners. No title gradient."
			self drawClassicFrameOn: aCanvas color: titleColor ].

	self titleMorph ifNotNil: [ :titleM | titleM drawOn: aCanvas ].! !

!Panel methodsFor: 'drawing' stamp: 'KenD 4/28/2019 19:12:43'!
drawRoundedFrameOn: aCanvas color: theWidgetsColor
	"Title area is not inside window borders"
	| bottomFactor topFactor |
	Theme current useWindowTitleGradient
		ifTrue: [
			topFactor _ Theme current titleGradientTopFactor.
			bottomFactor _ Theme current titleGradientBottomFactor ]
		ifFalse: [
			topFactor _ 1.
			bottomFactor _ 1 ].
	aCanvas
		windowFrame: (0@0 extent: extent)
		color: theWidgetsColor * Theme current titleGradientExtraLightness
		radius: Theme current roundedWindowRadius
		border: borderWidth
		labelHeight: self labelHeight + borderWidth
		gradientTop: topFactor
		gradientBottom: bottomFactor
		insideColor: color! !

!Panel methodsFor: 'drawing' stamp: 'jmv 8/23/2020 20:17:59'!
makeMeFullyVisible 

	self world extent > (0@0) ifFalse: [^ self].

	(self position >= (0@0) and: [ self position < (self world extent-self extent)]) ifTrue: [
		^ self "OK -- visible"].

	self position: (RealEstateAgent initialFrameFor: self initialExtent: self displayBounds world: self world) topLeft! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
makeMeVisible 

	self world morphExtent > (0@0) ifFalse: [^ self].

	(self morphPosition >= (0@0) and: [ self morphPosition < (self world morphExtent-self labelHeight)]) ifTrue: [
		^ self "OK -- at least my top left is visible"].

	"window not on screen (probably due to reframe) -- move it now"
	self morphPosition: (RealEstateAgent initialFrameFor: self initialExtent: extent world: self world) topLeft! !

!Panel methodsFor: 'layout' stamp: 'KenD 12/9/2013 16:46'!
beColumn
	layoutMorph
		ifNotNil: [ layoutMorph beColumn ]
		ifNil: [
			layoutMorph _ LayoutMorph newColumn.
			self addMorphFront: layoutMorph ]! !

!Panel methodsFor: 'layout' stamp: 'KenD 12/9/2013 16:46'!
beRow
	layoutMorph
		ifNotNil: [ layoutMorph beRow ]
		ifNil: [
			layoutMorph _ LayoutMorph newRow.
			self addMorphFront: layoutMorph ]! !

!Panel methodsFor: 'layout' stamp: 'jmv 8/23/2020 20:43:06'!
layoutSubmorphs
	"Compute a new layout of submorphs based on the given layout bounds."

	| myBounds |
	layoutMorph ifNotNil: [
		myBounds _ self layoutBounds.
		layoutMorph
			morphPosition: myBounds origin;
			morphExtent: myBounds extent 
	].
	titleMorph ifNotNil: [ titleMorph layoutSubmorphs ].
	
	self layoutNeeded: false! !

!Panel methodsFor: 'geometry' stamp: 'jmv 4/25/2019 10:07:34'!
boxExtent
	"answer the extent to use in all the buttons. 
	 
	the label height is used to be proportional to the fonts preferences"
	| e |
	e _ Preferences windowTitleFont lineSpacing.
	^e@e! !

!Panel methodsFor: 'geometry' stamp: 'KenD 10/3/2019 12:52:58'!
fitInWorld

	"Try to be contained in the world; return boundingBox"
	| displayRect boundingBox |
	displayRect := RealEstateAgent maximumUsableAreaInWorld: self runningWorld.
	boundingBox  := self morphPositionInWorld extent: self morphExtentInWorld.
	boundingBox := boundingBox translatedToBeWithin: displayRect.
	self morphPositionInWorld: boundingBox origin.
	^boundingBox! !

!Panel methodsFor: 'geometry' stamp: 'KenD 8/26/2015 12:31'!
fontPreferenceChanged
	"My size will have changed. "
	
	super fontPreferenceChanged.
	self morphExtent: self minimumExtent.
! !

!Panel methodsFor: 'geometry' stamp: 'KenD 4/18/2015 20:35'!
labelRectangle
	"Actually the whole label area"

	| e x0 y0 x1 y1|
	e _ self boxExtent.
	x0 _  e x * 4 + 14.
	y0 _ 2.
	x1 _ extent x - 1.
	y1 _ e y + 1.
	^x0@y0 corner: x1@y1
	
	
	
! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:05'!
labelRectangleForEmbossed
	"Actually the whole label area"

	| e x0 y0 x1 y1 |
	e _ self boxExtent.
	x0 _ e x * 4 + 14.
	y0 _ 1.
	x1 _ extent x - 1.
	y1 _ e y + 2.
	^x0@y0 corner: x1@y1
	
	
	
! !

!Panel methodsFor: 'geometry' stamp: 'KenD 7/24/2014 20:14'!
layoutBounds
	"Return the bounds for laying out children of the receiver"
	"Exclude the label area"

	^  (0@0 extent: self morphExtent) insetBy: (0 @ (self labelHeight) corner: 0 @ 0)! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:06'!
minPaneHeightForReframe

	^ StrikeFont default height + 10! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:06'!
minPaneWidthForReframe

	^ ScrollBar scrollbarThickness * 3! !

!Panel methodsFor: 'geometry' stamp: 'KenD 3/9/2020 13:29:27'!
minimumExtent
	"Subclasses may want to override me"
	
	| minTitleExtent minLayoutExtent  |
	
	minTitleExtent    := titleMorph    minimumExtent.
	minLayoutExtent := layoutMorph minimumExtent.
	
	^ ((minTitleExtent x max: minLayoutExtent x)
		@ (minTitleExtent y + minLayoutExtent y))
	! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:55'!
buildMorphicWindow

	self subclassResponsibility ! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:42'!
buttonColor

	^ Theme current buttonColorFrom: self widgetsColor! !

!Panel methodsFor: 'GUI building' stamp: 'jmv 4/25/2019 10:07:38'!
defaultButtonPaneHeight
	"Answer the user's preferred default height for new button panes."

	^ Preferences standardButtonFont lineSpacing * 14 // 8! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 4/25/2015 08:51'!
hideButtons

	self titleMorph hideButtons ! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 4/25/2015 08:45'!
showButtonsNamed: aSymbolCollection

	self titleMorph showButtonsNamed: aSymbolCollection ! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:42'!
textBackgroundColor

	^ Theme current paneBackgroundFrom: self widgetsColor! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/22/2016 14:16:03'!
windowColor
	"Some default"
	
	^ Theme current transcript  "model class windowColor"! !

!Panel methodsFor: 'dropping/grabbing' stamp: 'KenD 9/17/2019 13:26:55'!
valueWhenDropped

	^nil! !

!Panel methodsFor: 'events' stamp: 'KenD 4/24/2015 16:45'!
closeButtonClicked
	"The user clicked on the close-box control in the window title.  For Mac users only, the Mac convention of option-click-on-close-box is obeyed if the mac option key is down."

	Preferences dismissAllOnOptionClose ifTrue:
		[Sensor rawMacOptionKeyPressed ifTrue:
			[^ self world closeUnchangedWindows]].
	self delete  "closeBox overrides stayUp"
! !

!Panel methodsFor: 'events' stamp: 'KenD 4/24/2015 16:45'!
collapseButtonClicked
	
	self collapse
! !

!Panel methodsFor: 'events' stamp: 'KenD 4/24/2015 16:45'!
expandButtonClicked
	
	self expand
! !

!Panel methodsFor: 'events' stamp: 'KenD 4/24/2015 16:46'!
pinButtonClicked
	"The user clicked on the push pin. Subclasses should add actions and invoke me"
	
	self stayUp: true
	! !

!Panel methodsFor: 'events' stamp: 'KenD 12/9/2013 17:07'!
wantsToBeDroppedInto: aMorph
	"Return true if it's okay to drop the receiver into aMorph"
	
	^ aMorph isWorldMorph! !

!Panel methodsFor: 'events' stamp: 'KenD 4/28/2015 13:42'!
windowMenuButtonClicked
	
	self subclassResponsibility 
! !

!Panel methodsFor: 'initialization' stamp: 'KenD 12/9/2013 17:05'!
defaultBorderWidth
	"answer the default border width for the receiver"

	^ Theme current roundWindowCorners
		ifTrue: [ 3 ]
		ifFalse: [ 2 ]! !

!Panel methodsFor: 'initialization' stamp: 'KenD 12/9/2013 16:43'!
defaultExtent

	^ 300 @ 200! !

!Panel methodsFor: 'initialization' stamp: 'KenD 6/1/2020 14:55:20'!
defaultSeparation

	^ 4 "Pixels between controls/layouts"! !

!Panel methodsFor: 'initialization' stamp: 'KenD 8/26/2015 12:40'!
initialize
	"Initialize a system window. Add label, stripes, etc., if desired"

	super initialize.
	titleMorph := WindowTitleMorph title: 'Untitled'.
	stayUp := false. "UI push pin to change"
	titleMorph 
			layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1.0);
			morphExtent: extent x @ (self labelHeight + borderWidth);
			layoutSubmorphs.

	super addMorph: titleMorph.

	"by default"
	self beColumn.
! !

!Panel methodsFor: 'initialization' stamp: 'KenD 4/18/2015 18:30'!
openInWorld
	"Ensure all widgets have proper colors before opening"
	
	self widgetsColor: self windowColor.
	super openInWorld.
	^ self! !

!Panel methodsFor: 'testing' stamp: 'KenD 12/9/2013 16:45'!
is: aSymbol
	^ aSymbol == #Panel or: [ super is: aSymbol ]! !

!Panel methodsFor: 'testing' stamp: 'KenD 12/9/2013 16:45'!
isOpaqueMorph
	"Not really used, as we also reimplement #addPossiblyUncoveredAreasIn:to:"
	^ (Theme current roundWindowCorners or: [ color mightBeTranslucent ]) not! !

!Panel methodsFor: 'label' stamp: 'KenD 4/24/2015 15:48'!
label

	^ self titleMorph titleString ! !

!Panel methodsFor: 'label' stamp: 'KenD 12/9/2013 16:49'!
labelHeight
	"Answer the height for the window label."

	^ self boxExtent y+1! !

!Panel methodsFor: 'label' stamp: 'KenD 4/25/2015 12:54'!
relabel

	| newLabel |
	newLabel _ FillInTheBlankMorph 
		request: 'New title for this window'
		initialAnswer: self labelString.
	newLabel isEmpty ifTrue: [^self].
	self setLabel: newLabel! !

!Panel methodsFor: 'label' stamp: 'KenD 4/28/2015 18:34'!
setLabel: aString

	self titleMorph titleString: aString.
! !

!Panel methodsFor: 'label' stamp: 'KenD 12/9/2013 17:02'!
update: aSymbol

	super update: aSymbol.
	aSymbol == #relabel
		ifTrue: [ model ifNotNil: [ self setLabel: model labelString ]]! !

!Panel methodsFor: 'accessing' stamp: 'KenD 4/24/2015 15:54'!
layoutMorph

	^ layoutMorph! !

!Panel methodsFor: 'accessing' stamp: 'KenD 4/24/2015 15:41'!
pinButton
	"private"
	
	^ titleMorph pinButton ! !

!Panel methodsFor: 'accessing' stamp: 'KenD 4/19/2015 07:30'!
stayUp

	^ stayUp! !

!Panel methodsFor: 'accessing' stamp: 'KenD 4/19/2015 14:11'!
stayUp: aBoolean

	stayUp := aBoolean.
	aBoolean
		ifTrue: [ self pinButton hide ] 
		ifFalse: [ self pinButton show ] ! !

!Panel methodsFor: 'accessing' stamp: 'KenD 4/24/2015 15:44'!
titleMorph 

	^ titleMorph! !

!Panel methodsFor: 'accessing' stamp: 'KenD 4/18/2015 18:16'!
widgetsColor

	widgetsColor ifNotNil: [ ^ widgetsColor ].
	^Display depth > 2
		ifTrue: [ self windowColor ]
		ifFalse: [ Color white ]
! !

!Panel methodsFor: 'accessing' stamp: 'KenD 12/9/2013 16:42'!
widgetsColor: aColor
	"aColor will be used for titles, borders, etc.
	A variation of it, #paneColorFrom:, will be used for panes background"

	widgetsColor _ aColor.
	self color: self textBackgroundColor.
	self adoptWidgetsColor: widgetsColor! !

!Panel methodsFor: 'change reporting' stamp: 'KenD 4/24/2015 18:20'!
morphExtent: newExtent

	super morphExtent: newExtent.
	self titleMorph morphExtent: extent x @ (self labelHeight + borderWidth)! !

!Panel class methodsFor: 'instance creation' stamp: 'KenD 12/9/2013 18:53'!
open: model

	^self open: model label: nil! !

!Panel class methodsFor: 'instance creation' stamp: 'KenD 4/25/2015 08:43'!
open: model label: aString

	|  window |
	window _ self new.
	window
		model: model;
		buildMorphicWindow.
	aString ifNotNil: [ window setLabel: aString ].
	^ window 
		morphPosition: 
			(RealEstateAgent 
					initialFrameFor: window 
					initialExtent: window defaultExtent 
					world: self runningWorld ) topLeft;
		openInWorld;
		yourself! !

!EditPanel methodsFor: 'accessing' stamp: 'KenD 8/25/2015 17:22'!
buttonArea

	^ buttonArea! !

!EditPanel methodsFor: 'accessing' stamp: 'KenD 8/25/2015 17:22'!
buttonArea: aButtonArea

	buttonArea := aButtonArea ! !

!EditPanel methodsFor: 'accessing' stamp: 'KenD 7/4/2015 08:58'!
editModel
	"A subclass may wish to supply a custom editModel rather than model clone.
	[Note Object>>copy and Morph>>copy]"
	
	editModel ifNil: [ editModel := self model shallowCopy postCopy ].
	
	^ editModel! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 4/19/2015 15:22'!
cancelAndForgetEverything

	editModel := nil.
	self stayUp 
		ifFalse: [ self delete ]
		ifTrue: [ self refreshView ]! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 4/19/2015 15:21'!
refreshView

	self subclassResponsibility ! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 19:38'!
replaceArea: oldArea with: newArea
	"Replace oldArea in its container with newArea and clean up any ActionMaps"
	
	super replaceArea: oldArea with: newArea.
	oldArea submorphsDo: [ :sm | 
		self editModel removeActionsWithReceiver: sm
	].
! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 7/27/2015 13:25'!
showHalo

	| aMorph |
	aMorph := self model.
	(aMorph isKindOf: Morph)
	ifFalse: [ self subclassResponsibility ] "subclass must override if model not Morph"
	ifTrue: [ aMorph isInWorld ifTrue: [ aMorph show; addHalo ] ]! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 7/27/2015 16:32'!
showHaloButtonClicked

	self subclassResponsibility! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 19:01'!
updateMasterFromCopy
	"Update model from editModel"
	
	self subclassResponsibility ! !

!EditPanel methodsFor: 'initialization' stamp: 'KenD 12/17/2013 19:02'!
editModel: anObject

	editModel := anObject! !

!EditPanel methodsFor: 'area layouts' stamp: 'KenD 5/25/2020 13:32:23'!
newButtonArea
	"Answer a LayoutMorph with Update and Cancel buttons"
	
	^ ( LayoutMorph newRow) 
		separation: 8@0;
		addMorph: (PluggableButtonMorph 
				model: self 
				action:  #updateMasterFromCopy
				label: 'Update')
			layoutSpec: (LayoutSpec 
							proportionalWidth: 0.3 
							proportionalHeight:  1 
							offAxisEdgeWeight: #center);
		addMorph: (PluggableButtonMorph 
				model: self 
				action:  #cancelAndForgetEverything
				label: 'Cancel')
			layoutSpec: (LayoutSpec 
							proportionalWidth: 0.3 
							proportionalHeight:  1 
							offAxisEdgeWeight: #center);
		addMorph: (PluggableButtonMorph 
				model: self 
				action:  #showHaloButtonClicked
				label: 'Show Halo')
			layoutSpec: (LayoutSpec 
							proportionalWidth: 0.3 
							proportionalHeight:  1 
							offAxisEdgeWeight: #center);
		layoutSpec: (LayoutSpec 
							proportionalWidth: 1 
							fixedHeight: (2 * Preferences windowTitleFont lineSpacing)
							offAxisEdgeWeight: #center);
		axisEdgeWeight: #center;
		color: self widgetsColor;
		yourself

	! !

!LayoutMorphEditPanel methodsFor: 'GUI building' stamp: 'KenD 5/25/2020 13:27:43'!
buildMorphicWindow
	
	| controlArea leftCol rightCol  |	
	self setLabel: 'Layout: ', (self model printStringLimitedTo: 30).
	self titleMorph showButtonsNamed: #( close pin collapse showHalo ).
		
	directionArea    := self newDirectionArea.
	paddingArea     := self newPaddingArea.
	separationArea := self newSeparationtionArea.
	colorArea         := self newColorArea.
	self buttonArea: self newButtonArea.

	controlArea :=  LayoutMorph newRow.  "A row of two columns"
	controlArea separation: 2.
		
	leftCol := LayoutMorph newColumn.
	leftCol 
		separation: self defaultSeparation;
		axisEdgeWeight: #columnTop;
		addMorph: directionArea;
		addMorph: paddingArea.
	controlArea addMorph: leftCol.

	rightCol := LayoutMorph newColumn.
	rightCol 
		separation: self defaultSeparation;
		axisEdgeWeight: #columnTop;
		addMorph: separationArea ;
		addMorph: colorArea .
	controlArea addMorph: rightCol.
	
	self layoutMorph 
		separation: self defaultSeparation;
		addMorph: controlArea;
		addMorph: self buttonArea;
		axisEdgeWeight: #center.
		
	self morphExtent: self minimumExtent;
		yourself

! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 8/25/2015 15:55'!
buttonArea

	^ buttonArea ! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
colorArea

	^ colorArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:26'!
colorArea: newColorArea

	colorArea := newColorArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
directionArea

	^ directionArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:26'!
directionArea: newDirectonArea

	directionArea := newDirectonArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 14:43'!
padEntry

	^ padEntry! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 14:34'!
padRadio

	^ padRadio! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
paddingArea

	^ paddingArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:27'!
paddingArea: newPaddingArea

	paddingArea := newPaddingArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
separationArea

	^ separationArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:27'!
separationArea: newSeparationArea

	separationArea := newSeparationArea! !

!LayoutMorphEditPanel methodsFor: 'private' stamp: 'KenD 12/13/2016 19:18:31'!
colorMorph
	"Answer a framed color swatch"
	
	| imageMorph frameMorph |
	imageMorph := DropColorMorph fromColor: self editModel color.
	imageMorph image: (self editModel color icon magnifyTo: 64@64). "NB: not resizable"
	imageMorph setProperty:  #'allowsMorphDrop' toValue: true.
	imageMorph setProperty: #dropAction 
				   toValue: [ :aMorph :colorValue |
								(colorValue isKindOf: Color)
									ifTrue: [ self modelColor: colorValue ]. 
									"else ignore"
							].
	frameMorph := FrameMorph new ::
		morphExtent: 68@68;
		borderColor: Color black; 
		borderWidth: 2; 
		yourself.
	frameMorph addMorph: imageMorph.
	imageMorph morphPosition: 2@2.
	
	"Make color swatch draggable"
	frameMorph setProperty: #allowsSubmorphDrag toValue: true.

	^ frameMorph
! !

!LayoutMorphEditPanel methodsFor: 'initialization' stamp: 'KenD 9/17/2016 13:08:30'!
defaultExtent

	^ 510 @ 300! !

!LayoutMorphEditPanel methodsFor: 'geometry' stamp: 'KenD 8/26/2015 14:43'!
fontPreferenceChanged
	"My size needs adjustment"

	self submorphsDo: [ :m | m fontPreferenceChanged ].
	self refreshView.
	self submorphsDo: [ :m | m fontPreferenceChanged ].
.	self morphExtent: self minimumExtent ! !

!LayoutMorphEditPanel methodsFor: 'geometry' stamp: 'KenD 3/9/2020 13:08:03'!
xxMminimumExtent
"Answer minimum extent to hold my submorphs"

	| width height |
	width := height := 0.
	self submorphsDo: [ :sm | | minExt |
		minExt := sm minimumExtent.
		width := width max: minExt x.
		height := height + minExt y.
	].
	^ width @ height! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 2/26/2020 07:57:15'!
modelBeColumn
	"My editModel should be a Column"

	self editModel beColumn.
	self refreshDirectionArea.
	self refreshPaddingArea.
	self editModel refreshExtent.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 2/26/2020 07:57:26'!
modelBeRow
	"My editModel should be a Row"
	
	self editModel beRow.
	self refreshDirectionArea.
	self refreshPaddingArea.
	self editModel refreshExtent.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:35'!
modelColor: aColor
	
	self editModel color: aColor.
	self refreshColorArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 5/22/2020 13:32:33'!
modelPadding: numPixels
	
	self editModel axisEdgeWeight: numPixels.
	self refreshPaddingArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:36'!
modelXSeparation: numPixels

	self editModel separation: numPixels @ self editModel ySeparation.
	self refreshSeparationtionArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:36'!
modelYSeparation: numPixels

	self editModel separation: (self editModel xSeparation @ numPixels).
	self refreshSeparationtionArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 14:18'!
newDirectionSelection: dirSymbol

	(dirSymbol = #Row)
		ifTrue: [ self modelBeRow ] 
		ifFalse: [ self modelBeColumn ]! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 4/19/2015 15:19'!
refreshView

	self refreshColorArea; 
		refreshDirectionArea; 
		refreshPaddingArea; 
		refreshSeparationtionArea! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 7/27/2015 16:26'!
showHaloButtonClicked

	| aMorph |
	aMorph := self model.
	(aMorph isInWorld)
		ifTrue: [aMorph show; addHalo ]
		ifFalse: [
		(HoverHelpMorph 
			contents: aMorph printString , ' not shown in world')
				popUpForHand: self  world activeHand
	]! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 5/22/2020 13:26:01'!
updateMasterFromCopy
	"Update model from editModel"
	
	| original editCopy |
	original := self model.
	editCopy := self editModel.
	original direction: editCopy direction.
	original axisEdgeWeight: editCopy axisEdgeWeight.
	original separation: ( editCopy xSeparation @ editCopy ySeparation ).
	original color: editCopy color.
	original refreshExtent; layoutSubmorphs; redrawNeeded.
	original owner ifNotNil: [ :container | container layoutSubmorphs; redrawNeeded ].
	self editModel: nil.
	original triggerEvent: #propertyChanged.
	
	self stayUp 
		ifFalse: [ self delete ] 
		ifTrue: [ self refreshView ]
! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 10/23/2020 08:37:13'!
newColorArea
	"Answer a FramedLayoutMorph showing color swatch and hex RGB entry"
	
	| newColorArea label  colorRGB hexEntry |
	newColorArea := LayoutMorph newColumn :: borderWidth: 2.
	label := LabelMorph contents: 'Color' ::
					  emphasis: AbstractFont boldCode.
	colorRGB := SimpleNumberEntryMorph hexRGBEntry.
	colorRGB layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: #center).
		
	hexEntry := LayoutMorph newRow.
	hexEntry
		separation: 2; axisEdgeWeight: #rowLeft;
		color: Color transparent;
		addMorph: (LabelMorph contents: '16r');
		addMorph: colorRGB;
		addMorph: (LabelMorph contents: 'hexRGB').
		
	"Setup"
	colorRGB valueAccessor: [ :someModel | | backgroundColor |
		backgroundColor := someModel color.
		( '16r',  backgroundColor hexStringRGB) asNumber
	].
	colorRGB valueUpdator: [ :integerRGB |
			self modelColor: (Color 
					r: ((integerRGB bitShift: -16) bitAnd: 255) / 255
					g: ((integerRGB bitShift: -8) bitAnd: 255) / 255
					b: (integerRGB bitAnd: 255) / 255)
	].
	colorRGB refreshValueFrom: self editModel.
		
	^ newColorArea
		color: Color  transparent;
		axisEdgeWeight: #columnTop;
		separation: self defaultSeparation + 6;
		addMorph: label;
		addMorph: self colorMorph;
		addMorph: hexEntry;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 10/23/2020 08:35:27'!
newDirectionArea
	"Answer a FramedLayoutMorph with controls for Direction (Row,Column)"
	
	| dirArea label radio direction |
	dirArea := LayoutMorph newColumn :: borderWidth: 2.
	label := LabelMorph contents: 'Direction' ::
					 emphasis: AbstractFont boldCode.
	radio := RadioGroup fromList: #(Row Column).
		
	"Setup"
	direction := self editModel direction.
	(direction == #horizontal)
		ifTrue: [ (radio buttonFor: #Row) select ]
		ifFalse: [ (radio buttonFor: #Column) select ].

	radio when: #informRadioSelection send: #newDirectionSelection: to: self.
		
	^ dirArea
		color: Color  transparent ;
		separation: 2;
		addMorph: label;
		addMorph: radio;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 10/23/2020 08:35:35'!
newPaddingArea
	"Answer a FramedLayoutMorph with controls for Padding"
	
	| padArea label direction |
	padArea := LayoutMorph newColumn :: borderWidth: 2.
	label := LabelMorph contents: 'EdgeWeight' ::
					 emphasis: AbstractFont boldCode.
	direction := self editModel direction.
	padRadio := RadioGroup fromList: ( 
		(direction = #horizontal)
			ifTrue: [ #(Left Center Right Specify) ] 
			ifFalse: [ #(Top Center Bottom Specify) ]
	)..
	
	"Setup"
	padEntry := SimpleNumberEntryMorph realFactor: 1.0 maxNumChars: 3.
	(padRadio rowFor: #Specify) addMorph: padEntry.
	padEntry valueAccessor: [ :myModel | myModel axisEdgeWeight ].
	padEntry valueUpdator: [ :newPad | self modelPadding: newPad ].
	padEntry refreshValueFrom: self editModel.
	self setPadRadio: padRadio fromPadFactor: padEntry value.
	
	padRadio when: #informRadioSelection send: #newPaddingSelection: to: self.
		
	^ padArea
		color: Color transparent ;
		separation: 4;
		addMorph: label;
		addMorph: padRadio;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:51'!
newPaddingSelection: padSym

	| radio |
	radio := self padRadio.
	padSym caseOf: {
		[ #Left ] -> [ (radio buttons at: 1) select. self padEntry setValue: 0.0 ].
		[ #Top ] -> [ (radio buttons at: 1) select. self padEntry setValue: 0.0 ].
		[ #Center ] -> [ (radio buttons at: 2) select. self padEntry setValue: 0.5 ].
		[ #Right ] -> [ (radio buttons at: 3) select. self padEntry setValue: 1.0 ].
		[ #Bottom ] -> [ (radio buttons at: 3) select. self padEntry setValue: 1.0 ].
		[ #Specify ] ->  [ (radio buttons at: 4) select ].
	}.

! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 10/23/2020 08:35:44'!
newSeparationtionArea
	"Answer a FramedLayoutMorph with controls for x & y separation"
	
	| sepArea label xArea yArea xSep ySep |
	sepArea := LayoutMorph newColumn :: borderWidth: 2.
	label := LabelMorph contents: 'Separation' ::
					 emphasis: AbstractFont boldCode.
		
	"Setup"
	xSep := SimpleNumberEntryMorph 
			integerRangeFrom: 0 
			to: DisplayScreen actualScreenSize x 
			maxNumChars: 5.
	xArea := LayoutMorph newRow.
	xArea 
		color: Color  transparent;
		separation: 2;
		addMorph: (LabelMorph contents: '  X ');
		addMorph: xSep;
		addMorph: (LabelMorph contents: 'pixels').
		
	ySep := SimpleNumberEntryMorph 
			integerRangeFrom: 0 
			to: DisplayScreen actualScreenSize y
			maxNumChars: 5.
	yArea := LayoutMorph newRow.
	yArea 
		color: Color  transparent;
		separation: 2;
		addMorph: (LabelMorph contents: '  Y ');
		addMorph: ySep;
		addMorph: (LabelMorph contents: 'pixels').

	"Value flow"
	xSep valueAccessor: [ :myModel | myModel xSeparation ].
	xSep valueUpdator:   [ :newX | self modelXSeparation: newX ].
	ySep valueAccessor: [ :myModel | myModel ySeparation ].
	ySep valueUpdator:   [ :newY | self modelYSeparation: newY ].
	xSep refreshValueFrom: self editModel.
	ySep refreshValueFrom: self editModel.
		
	 ^ sepArea
		color: Color  transparent ;
		separation: 2;
		addMorph: label;
		addMorph: xArea;
		addMorph: yArea;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:30'!
refreshColorArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self colorArea.
	newArea := self newColorArea.
	self replaceArea: oldArea with: newArea.
	self colorArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:29'!
refreshDirectionArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self directionArea.
	newArea := self newDirectionArea.
	self replaceArea: oldArea with: newArea.
	self directionArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:29'!
refreshPaddingArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self paddingArea.
	newArea := self newPaddingArea.
	self replaceArea: oldArea with: newArea.
	self paddingArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:28'!
refreshSeparationtionArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self separationArea.
	newArea := self newSeparationtionArea.
	self replaceArea: oldArea with: newArea.
	self separationArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:29'!
setPadRadio: radio fromPadFactor: factor

	factor caseOf: {
		[0.0] -> [ (radio buttons at: 1) select ].
		[0.5] -> [ (radio buttons at: 2) select ].
		[1.0] -> [ (radio buttons at: 3) select ].
	} otherwise: [ (radio buttons at: 4) select ]! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 9/5/2020 14:08:22'!
addFixedHeightEntryMorphTo: radio
	"Add entry field to #Fixed radioButton row"

	| fixEntry spec rowForFixed | 
	spec :=  self editModel.
	fixEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize y 
						maxNumChars: 4.
	fixEntry valueAccessor: [ :myModel | myModel privateFixedHeight ].
	fixEntry valueUpdator: [ :newFixPix | spec fixedHeight: newFixPix ].
	fixEntry refreshValueFrom: spec.
	"Do layout surgery to make room for added field"
	rowForFixed := (radio rowFor: #Fixed).
	rowForFixed
			layoutSpec proportionalWidth: 0.4;
			offAxisEdgeWeight:  #leftOrTop.
	rowForFixed 
			addMorph: fixEntry.
! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 6/1/2020 14:46:20'!
addFixedWidthEntryMorphTo: radio
	"Add entry field to #Fixed radioButton row"

	| fixEntry spec rowForFixed | 
	spec :=  self editModel.
	fixEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize x 
						maxNumChars: 4.
	fixEntry valueAccessor: [ :myModel | myModel privateFixedWidth ].
	fixEntry valueUpdator: [ :newFixPix | spec fixedWidth: newFixPix ].
	fixEntry refreshValueFrom: spec.
	"Do layout surgery to make room for added field"
	rowForFixed := (radio rowFor: #Fixed).
	rowForFixed 
			layoutSpec proportionalWidth: 0.4;
			offAxisEdgeWeight:  #rowTop.
	rowForFixed
			addMorph: fixEntry.
! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 10/30/2015 14:23'!
newProportionalHeightAuxArea
	"Add proportion factor and minSize fields"

	| aux |
	aux := LayoutMorph newColumn.
	^ aux
		color: Color transparent;
		separation: self defaultSeparation;
		addMorph: self propHeightPercent;
		addMorph: self propHeightMinimum;
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 10/30/2015 14:23'!
newProportionalWidthAuxArea
	"Add proportion factor and minSize fields"

	| aux |
	aux := LayoutMorph newColumn.
	^ aux
		color: Color transparent;
		separation: self defaultSeparation;
		addMorph: self propWidthPercent;
		addMorph: self propWidthMinimum;
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 4/28/2019 18:41:11'!
propHeightMinimum
	"proportion percent"

	| row minEntry |
	row := LayoutMorph newRow.
	minEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize y 
						maxNumChars: 4.
	minEntry valueAccessor: [ :myModel | 
		myModel privateFixedHeight ifNil: [ 0 ] ifNotNil: [ :height | height rounded ]
	].
	minEntry valueUpdator: [ :newMinPixels | 
		self editModel proportionalHeight: self editModel privateProportionalHeight
						  minimum: newMinPixels ].
	minEntry refreshValueFrom: self editModel.
	^ row
		color: Color transparent;
		addMorph: (LabelMorph contents: 'minimum  ');
		addMorph: minEntry;
		addMorph: (LabelMorph contents: ' pixels');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 4/28/2019 18:41:37'!
propHeightPercent
	"proportion percent"

	| row propEntry |
	row := LayoutMorph newRow.
	propEntry := SimpleNumberEntryMorph percentForRealFactor: 1.0.
	propEntry valueAccessor: [ :myModel | 
		myModel privateProportionalHeight ifNil: [ 0 ] ifNotNil: [ :height | height ]
	].
	propEntry valueUpdator: [ :newFactor | 
		self editModel proportionalHeight: newFactor 
						  minimum: self editModel privateFixedHeight ].
	propEntry refreshValueFrom: self editModel.
	^ row
		color: Color transparent;
		addMorph: (LabelMorph contents: '        ');
		addMorph: propEntry;
		addMorph: (LabelMorph contents: '%');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 4/28/2019 18:42:05'!
propWidthMinimum
	"proportion percent"

	| row minEntry |
	row := LayoutMorph newRow.
	minEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize y 
						maxNumChars: 4.
	minEntry valueAccessor: [ :myModel | 
		myModel privateFixedWidth ifNil: [ 0 ] ifNotNil: [ :width | width rounded ]
	].
	minEntry valueUpdator: [ :newMinPixels | 
		self editModel proportionalWidth: self editModel privateProportionalWidth
						  minimum: newMinPixels ].
	minEntry refreshValueFrom: self editModel.
	^ row
		color: Color transparent;
		addMorph: (LabelMorph contents: 'minimum  ');
		addMorph: minEntry;
		addMorph: (LabelMorph contents: ' pixels');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 4/28/2019 18:42:30'!
propWidthPercent
	"proportion percent"

	| row propEntry |
	row := LayoutMorph newRow.
	propEntry := SimpleNumberEntryMorph percentForRealFactor: 1.0.
	propEntry valueAccessor: [ :myModel | 
		myModel privateProportionalWidth ifNil: [ 1.0 ] ifNotNil: [ :width | width ]
	].
	propEntry valueUpdator: [ :newFactor | 
		self editModel proportionalWidth: newFactor 
						  minimum: self editModel privateFixedWidth ].
	propEntry refreshValueFrom: self editModel.
	^ row
		color: Color transparent;
		addMorph: (LabelMorph contents: '        ');
		addMorph: propEntry;
		addMorph: (LabelMorph contents: '%');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'GUI building' stamp: 'KenD 5/22/2020 13:34:07'!
buildMorphicWindow

	| controlsArea |
	self setLabel: 'LayoutSpec: ', (self model morph printStringLimitedTo: 30).
	self titleMorph showButtonsNamed: #( close pin collapse showHalo ); layoutSubmorphs.
		
	widthArea     := self newWidthArea.
	heightArea    := self newHeightArea.
	paddingArea  := self newPaddingArea.
	self buttonArea: self newButtonArea.
	
	controlsArea := LayoutMorph newRow.
	controlsArea 
		separation: self defaultSeparation;
		addMorph: widthArea;
		addMorph: heightArea;
		addMorph: paddingArea.

	"Setup is done in area creation methods"	

	self layoutMorph 
		separation: self defaultSeparation;
		addMorph: controlsArea;
		addMorph: self buttonArea;
		axisEdgeWeight: #center.
		
	self morphExtent: self minimumExtent;
		yourself

! !

!LayoutSpecEditPanel methodsFor: 'geometry' stamp: 'KenD 8/26/2015 14:43'!
fontPreferenceChanged
	"My size needs adjustment"

	self submorphsDo: [ :m | m fontPreferenceChanged. ].
	self refreshView.
	self submorphsDo: [ :m | m fontPreferenceChanged. ] 
.	self morphExtent: self minimumExtent ! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:50'!
heightArea

	^ heightArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:51'!
heightArea: newHeightArea

	heightArea := newHeightArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:49'!
padEntry

	^ padEntry! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:48'!
padRadio

	^ padRadio! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:49'!
paddingArea

	^ paddingArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:49'!
paddingArea: newPaddingArea

	paddingArea := newPaddingArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:50'!
widthArea

	^ widthArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:51'!
widthArea: newWidthArea

	widthArea := newWidthArea ! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 18:21'!
heightSelectionSymbol

	| fix prop |
	fix    := self editModel privateFixedHeight.
	prop := self editModel privateProportionalHeight.
	
	^ prop 
		ifNil: [
			fix ifNil: [ #'use morph height' ] 
				ifNotNil: [ #Fixed ]
		]
		ifNotNil: [ #Proportional ].! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 3/9/2020 13:56:10'!
newEmptyAuxArea

	| aux |
	aux := LayoutMorph newColumn.
	^ aux
		color: Color  transparent ; "
		layoutSpec: (LayoutSpec 
					proportionalWidth: 1.0 
					fixedHeight: self auxHeight
					minorDirectionPadding: #center);
		separation: self defaultSeparation;"
		yourself! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 10/23/2020 08:33:47'!
newHeightArea
	"Answer a FramedLayoutMorph with controls for Height"
	
	| heightRegion label spec radio selected |
	heightRegion := LayoutMorph newColumn :: borderWidth: 2.
	label := LabelMorph contents: 'Height' ::
					 emphasis: AbstractFont boldCode.
	radio := RadioGroup fromList: #( 'use morph height' Fixed Proportional ).
	selected := self heightSelectionSymbol.

	spec := LayoutSpec useAll.
	spec offAxisEdgeWeight: #leftOrTop.
		
	"Setup"
	self setRadioSelection: radio selectSym: selected.
	(selected == #Fixed) ifTrue: [ self addFixedHeightEntryMorphTo: radio ].
	"Nota Bene: be sure to setRadioSelection:selectSym: BEFORE when:send:to:"
	radio when: #informRadioSelection send: #newHeightSelection: to: self.
		
	^ heightRegion
		layoutSpec: spec;
		separation: 2;
		color: Color  transparent ;
		addMorph: label;
		addMorph: radio;
		addMorph: ((selected == #Proportional)
			ifTrue: [self newProportionalHeightAuxArea]
			ifFalse: [self newEmptyAuxArea]);
		yourself 
! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 10/23/2020 08:33:55'!
newPaddingArea
	"Answer a FramedLayoutMorph with controls for Padding"
	
	| padArea label spec row |
	padArea := LayoutMorph newColumn :: borderWidth: 2.
	label := LabelMorph contents: 'offAxis EdgeWeight' ::
					 emphasis: AbstractFont boldCode.
	padRadio := RadioGroup fromList:  #('Left/Top' Center 'Right/Bottom' Specify) .
	
	spec := LayoutSpec fixedHeight:
		(2 * padArea borderWidth)
		+ (label minimumExtent y)
		+ (padRadio naturalHeight)
		+ 20.
	spec offAxisEdgeWeight: #leftOrTop.
			
	"Setup"
	padEntry := SimpleNumberEntryMorph realFactor: 1.0 maxNumChars: 3.
	row := (padRadio rowFor: #Specify).
	row addMorph: padEntry.
	padEntry valueAccessor: [ :myModel | myModel offAxisEdgeWeight ].
	padEntry valueUpdator: [ :newPad | self modelPadding: newPad ].
	padEntry refreshValueFrom: self editModel.
	self setPadRadio: padRadio fromPadFactor: padEntry value.
	
	padRadio when: #informRadioSelection send: #newPaddingSelection: to: self.
		
	^ padArea
		layoutSpec: spec;
		color: Color  transparent ;
		separation: 2;
		addMorph: label;
		addMorph: padRadio;
		yourself 
! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 10/23/2020 08:34:06'!
newWidthArea
	"Answer a FramedLayoutMorph with controls for Width"
	
	| widthRegion label radio selected |
	widthRegion := LayoutMorph newColumn :: borderWidth: 2.
	label := LabelMorph contents: 'Width' ::
					 emphasis: AbstractFont boldCode.
	radio := RadioGroup fromList: #( 'use morph width' Fixed Proportional ).
	selected := self widthSelectionSymbol.
			
	"Setup"
	self setRadioSelection: radio selectSym: selected.	
	(selected == #Fixed) ifTrue: [ self addFixedWidthEntryMorphTo: radio ].
	"Nota Bene: be sure to setRadioSelection:selectSym: BEFORE when:send:to:"
	radio when: #informRadioSelection send: #newWidthSelection: to: self.
		
	^ widthRegion
		color: Color  transparent ;
		separation: 2;
		addMorph: label;
		addMorph: radio;
		addMorph: ((selected == #Proportional)
			ifTrue: [self newProportionalWidthAuxArea]
			ifFalse: [self newEmptyAuxArea]);
		yourself 
! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 3/9/2020 14:00:37'!
refreshHeightArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self heightArea.
	newArea := self newHeightArea.
	self replaceArea: oldArea with: newArea.
	self heightArea: newArea;
		 morphExtent: self minimumExtent 
	! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 3/9/2020 14:00:47'!
refreshPaddingArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self paddingArea.
	newArea := self newPaddingArea.
	self replaceArea: oldArea with: newArea.
	self paddingArea: newArea;
		 morphExtent: self minimumExtent 
	! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 3/9/2020 14:00:54'!
refreshWidthArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self widthArea.
	newArea := self newWidthArea.
	self replaceArea: oldArea with: newArea.
	self widthArea: newArea;
		 morphExtent: self minimumExtent 
	! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 19:55'!
setPadRadio: radio fromPadFactor: factor

	factor caseOf: {
		[0.0] -> [ (radio buttons at: 1) select ].
		[0.5] -> [ (radio buttons at: 2) select ].
		[1.0] -> [ (radio buttons at: 3) select ].
	} otherwise: [ (radio buttons at: 4) select ]! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 19:45'!
setRadioSelection: radio selectSym: newSelectSym

	(radio buttonFor: newSelectSym) select! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 18:22'!
widthSelectionSymbol

	| fix prop |
	fix    := self editModel privateFixedWidth.
	prop := self editModel privateProportionalWidth.
	
	^ prop 
		ifNil: [
			fix ifNil: [ #'use morph width' ] 
				ifNotNil: [ #Fixed ]
		]
		ifNotNil: [ #Proportional ].! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 6/5/2020 07:49:54'!
modelPadding: numPixels
	
	self editModel offAxisEdgeWeight: numPixels.
	self refreshPaddingArea.! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 19:44'!
newHeightSelection: selectSym

	| spec origFix origProp |
	spec := self editModel.
	origFix   := spec privateFixedHeight.
	origProp := spec privateProportionalHeight.
	
	selectSym caseOf: {
		[ #Fixed ] -> [ 
			spec fixedHeight: (origFix ifNil: [ 0 ] ifNotNil: [ origFix ]) 
		].
		[ #Proportional ] -> [ 
			spec setProportionalHeight: (origProp ifNil: [ 1.0 ] ifNotNil: [ origProp ])
		].
		[ #'use morph height' ] -> [ self editModel useMorphHeight ].
	}.	
	
	self refreshHeightArea ! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 20:24'!
newPaddingSelection: padSym

	| radio |
	radio := self padRadio.
	padSym caseOf: {
		[ #'Left/Top' ] -> [ (radio buttons at: 1) select. self padEntry setValue: 0.0 ].
		[ #Center ] -> [ (radio buttons at: 2) select. self padEntry setValue: 0.5 ].
		[ #'Right/Bottom' ] -> [ (radio buttons at: 3) select. self padEntry setValue: 1.0 ].
		[ #Specify ] ->  [ (radio buttons at: 4) select ].
	}.

! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 19:46'!
newWidthSelection: selectSym

	| spec origFix origProp |
	spec := self editModel.
	origFix   := spec privateFixedWidth.
	origProp := spec privateProportionalWidth.
	
	selectSym caseOf: {
		[ #Fixed ] -> [ 
			spec fixedWidth: (origFix ifNil: [ 0 ] ifNotNil: [ origFix ]) 
		].
		[ #Proportional ] -> [ 
			spec setProportionalWidth: (origProp ifNil: [ 1.0 ] ifNotNil: [ origProp ])
		].
		[ #'use morph width' ] -> [ self editModel useMorphWidth ].
	}.	
	
	self refreshWidthArea.
	
! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 3/9/2020 13:58:10'!
refreshView

	self refreshHeightArea; 
		refreshPaddingArea;
		refreshWidthArea;
		morphExtent: self minimumExtent! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 7/27/2015 16:27'!
showHalo

	| aMorph |
	aMorph := self model morph.
	(aMorph isInWorld) 
	ifTrue: [aMorph show; addHalo ]
	ifFalse: [
		(HoverHelpMorph 
			contents: aMorph printString , ' not shown in world')
				popUpForHand: self  world activeHand
	]! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 7/4/2015 15:24'!
showHaloButtonClicked

	self showHalo! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 5/22/2020 13:38:43'!
updateMasterFromCopy
	"Update model from editModel"
	
	| original editCopy |
	original := self model.
	editCopy := self editModel.
	(self model morph isKindOf: ImageMorph)
	ifTrue: [
		^self inform: 'NOTE: ImageMorphs can''t be resized'
	] 
	ifFalse: [
		original proportionalHeight: editCopy privateProportionalHeight 
				  minimum: editCopy privateFixedHeight.
		original proportionalWidth: editCopy privateProportionalWidth 
				  minimum: editCopy privateFixedWidth
	].
	original offAxisEdgeWeight: editCopy offAxisEdgeWeight.
	self editModel: nil.
	"My containing LayoutMorph may need to recalculate & redisplay"
	original morph containingLayout 
		ifNotNil: [ :myLayoutMorph | myLayoutMorph layoutSubmorphs; redrawNeeded ].
	original triggerEvent: #propertyChanged.
	
	self stayUp 
		ifFalse: [ self delete ] 
		ifTrue: [ self refreshView ]! !

!ValueEntryPanel methodsFor: 'events' stamp: 'KenD 12/22/2016 14:05:30'!
accept

	self delete.
	self model accept.! !

!ValueEntryPanel methodsFor: 'events' stamp: 'KenD 12/22/2016 15:24:13'!
cancel

	self delete! !

!ValueEntryPanel methodsFor: 'GUI building' stamp: 'KenD 5/22/2020 13:35:58'!
buildMorphicWindow

	self layoutMorph 
		separation: self defaultSeparation;
		addMorph: self newEntryArea;
		addMorph: self newButtonArea;
		axisEdgeWeight: #center;
		color: (Color white)! !

!ValueEntryPanel methodsFor: 'GUI building' stamp: 'KenD 5/22/2020 13:46:16'!
newButtonArea
	"Add ACCEPT and CANCEL buttons"

	| buttonArea |
	buttonArea := LayoutMorph newRow.
	buttonArea 
		separation: 8@0;
		addMorph: (PluggableButtonMorph 
				model: self 
				action:  #accept
				label: 'Accept')
			layoutSpec: (LayoutSpec new ::
							proportionalWidth: 0.4 minimum: 100;
							proportionalHeight:  1;
							offAxisEdgeWeight: #center);
		addMorph: (PluggableButtonMorph 
				model: self 
				action:  #cancel
				label: 'Cancel')
			layoutSpec: (LayoutSpec new ::
							proportionalWidth: 0.4 minimum: 100;
							proportionalHeight:  1;
							offAxisEdgeWeight: #center);
		axisEdgeWeight: #center;
		color: (Color transparent).
		
	^ buttonArea ! !

!ValueEntryPanel methodsFor: 'GUI building' stamp: 'KenD 12/22/2016 13:59:32'!
newEntryArea

	self subclassResponsibility ! !

!ValueEntryPanel methodsFor: 'initialization' stamp: 'KenD 12/22/2016 18:39:51'!
initialize

	super initialize.
	self buildMorphicWindow.! !

!CharacterEntryPanel methodsFor: 'events' stamp: 'KenD 4/28/2019 18:50:16'!
accept
	
	self delete.
	self model 
		ifNotNil: [ :myModel | 
			myModel propertyValue: (self characterEditMorph value at: 1) 
		].! !

!CharacterEntryPanel methodsFor: 'events' stamp: 'KenD 3/18/2019 17:04:32'!
valueWhenDropped
	
	self model 
		ifNotNil: [ :m | 
			m propertyValue: (self characterEditMorph value at: 1) 
		] ifNil: [ '_' ].! !

!CharacterEntryPanel methodsFor: 'accessing' stamp: 'KenD 3/29/2017 13:37:21'!
characterEditMorph

	^ characterEditMorph! !

!CharacterEntryPanel methodsFor: 'initialization' stamp: 'KenD 3/29/2017 13:49:22'!
default: aChar label: aString

	characterEditMorph setValue: aChar.
	self setLabel: aString;
		 morphExtent: (self morphExtent max: self minimumExtent).
! !

!CharacterEntryPanel methodsFor: 'initialization' stamp: 'KenD 3/29/2017 13:46:05'!
initialize

	"inits before #initialize usied in #buildMorphicWindow".
	characterEditMorph := (SimpleNumberEntryMorph singleCharSelection: $c).
	super initialize.
! !

!CharacterEntryPanel methodsFor: 'initialization' stamp: 'KenD 5/31/2020 17:25:38'!
newEntryArea

	| entryLayout |
	entryLayout := LayoutMorph newRow.
	entryLayout 
		separation: self defaultSeparation;
		axisEdgeWeight: #center;
		addMorph: characterEditMorph ; "set in #initialize"
		color: (Color transparent).
	
	^ entryLayout ! !

!CharacterEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 3/29/2017 13:36:23'!
default: aChar label: stringName

	(aChar isKindOf: Character) 
		ifFalse: [ self error: 'I require a Character: ' , aChar printString ].

	^ self basicNew initialize default: aChar asString label: stringName ! !

!CharacterEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 3/29/2017 13:35:15'!
new

	^ self basicNew initialize default: 'c' label: 'Character Value'.! !

!PointEntryPanel methodsFor: 'events' stamp: 'KenD 4/28/2019 18:50:41'!
accept
	
	self delete.
	self model 
		ifNotNil: [ :myModel | 
			myModel propertyValue: 
				(xEntryMorph value @ yEntryMorph value) 
		].! !

!PointEntryPanel methodsFor: 'events' stamp: 'KenD 3/18/2019 17:03:19'!
valueWhenDropped

	self model 
		ifNotNil: [ :m | 
			m propertyValue: 
				(xEntryMorph value @ yEntryMorph value) 
		] ifNil: [ 0@0 ]! !

!PointEntryPanel methodsFor: 'initialization' stamp: 'KenD 12/22/2016 18:02:45'!
default: aPoint label: aString

	xEntryMorph setValue: aPoint x.
	yEntryMorph setValue: aPoint y.
	self setLabel: aString;
	 	 morphExtent: (self morphExtent max: self minimumExtent).
! !

!PointEntryPanel methodsFor: 'initialization' stamp: 'KenD 12/22/2016 15:41:35'!
initialize

	"inits before #initialize usied in #buildMorphicWindow"
	xEntryMorph := (SimpleNumberEntryMorph floatDefault: 0.0 maxNumChars: 8).
	yEntryMorph := (SimpleNumberEntryMorph floatDefault: 0.0 maxNumChars: 8).
	super initialize.
! !

!PointEntryPanel methodsFor: 'GUI building' stamp: 'KenD 10/16/2020 14:53:46'!
newEntryArea

	| entryLayout |
	entryLayout := LayoutMorph newRow.
	entryLayout 
		separation: self defaultSeparation;
		axisEdgeWeight: #center;
		addMorph: xEntryMorph; "set in #initialize"
		addMorph: (LabelMorph new :: contents: '@' );
		addMorph: yEntryMorph;
		color: (Color transparent).
	
	^ entryLayout ! !

!PointEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 12/22/2016 12:45:43'!
default: aPoint label: aString

	(aPoint isKindOf: Point) ifFalse: [ self error: 'I require a Point: ' , aPoint printString ].

	^ self basicNew initialize default: aPoint label: aString! !

!PointEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 12/22/2016 14:02:51'!
new

	^ self basicNew initialize default: 0@0 label: 'Point Value'.! !

!PointEntryPanel class methodsFor: 'examples' stamp: 'KenD 12/21/2016 15:27:25'!
example1
"
	PointEntryPanel example1.
"

	^  self
		default: 10@200
		label: 'Point Value' ::
		openInWorld: self runningWorld;
		yourself! !

!PositiveIntegerEntryPanel methodsFor: 'events' stamp: 'KenD 4/28/2019 18:51:07'!
accept
	
	self delete.
	self model 
		ifNotNil: [ :myModel | 
			myModel propertyValue: numberEntryMorph value 
		].! !

!PositiveIntegerEntryPanel methodsFor: 'events' stamp: 'KenD 3/18/2019 17:02:36'!
valueWhenDropped
	
	^ self model  
		ifNotNil: [ :m | 
			m propertyValue: numberEntryMorph value 
		] ifNil: [ 0 ]! !

!PositiveIntegerEntryPanel methodsFor: 'initialization' stamp: 'KenD 12/22/2016 18:03:24'!
default: aNumber label: aString

	numberEntryMorph setValue: aNumber.
	self setLabel: aString;
		 morphExtent: (self morphExtent max: self minimumExtent).
! !

!PositiveIntegerEntryPanel methodsFor: 'initialization' stamp: 'KenD 12/22/2016 17:15:00'!
initialize

	"inits before #initialize usied in #buildMorphicWindow".
	numberEntryMorph := (SimpleNumberEntryMorph integerDefault: 0 maxNumChars: 8).
	super initialize.
! !

!PositiveIntegerEntryPanel methodsFor: 'GUI building' stamp: 'KenD 5/22/2020 13:34:30'!
newEntryArea

	| entryLayout |
	entryLayout := LayoutMorph newRow.
	entryLayout 
		separation: self defaultSeparation;
		axisEdgeWeight: #center;
		addMorph: numberEntryMorph ; "set in #initialize"
		color: (Color transparent).
	
	^ entryLayout ! !

!PositiveIntegerEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 12/22/2016 17:11:29'!
default: aNumber label: aString

	(aNumber isKindOf: Integer) ifFalse: [ self error: 'I require a Positive Integer: ' , aNumber printString ].
	(aNumber >= 0) ifFalse: [ self error: 'I require a Positive Integer: ' , aNumber printString ].

	^ self basicNew initialize default: aNumber label: aString! !

!PositiveIntegerEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 12/22/2016 17:10:16'!
new

	^ self basicNew initialize default: 0 label: 'Positive Integer Value'.! !

!StringEntryPanel methodsFor: 'events' stamp: 'KenD 4/28/2019 18:52:43'!
accept
	
	self delete.
	self model 
		ifNotNil: [ :myModel | 
			myModel propertyValue: stringEditMorph contents 
		].! !

!StringEntryPanel methodsFor: 'events' stamp: 'KenD 3/18/2019 17:01:36'!
valueWhenDropped
	
	^ self model 
		ifNotNil: [ :m | 
			m propertyValue: stringEditMorph contents 
		] 
		ifNil: [ '' ]! !

!StringEntryPanel methodsFor: 'initialization' stamp: 'KenD 12/22/2016 17:02:20'!
default: aString label: stringName

	stringEditMorph contents: aString.
	self setLabel: stringName;
		  morphExtent: (self morphExtent max: self minimumExtent).
! !

!StringEntryPanel methodsFor: 'initialization' stamp: 'jmv 4/25/2019 10:08:12'!
initialize

	"inits before #initialize usied in #buildMorphicWindow"
	stringEditMorph := OneLineEditorMorph contents: '' .
	stringEditMorph layoutSpec: 
		(LayoutSpec 
			proportionalWidth: 1 
			fixedHeight: Preferences windowTitleFont lineSpacing ).
	super initialize.
! !

!StringEntryPanel methodsFor: 'GUI building' stamp: 'KenD 10/16/2020 14:34:27'!
newEntryArea

	| entryLayout |
	entryLayout := LayoutMorph newRow.
	entryLayout 
		separation: self defaultSeparation;
		axisEdgeWeight: #rowLeft;
		addMorph: stringEditMorph ; "set in #initialize"
		color: Color transparent;
		borderColor: Color black.
	
	^ entryLayout ! !

!StringEntryPanel methodsFor: 'accessing' stamp: 'KenD 12/22/2016 16:11:42'!
stringEditMorph

	^ stringEditMorph ! !

!StringEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 12/22/2016 16:09:00'!
default: aString label: stringName

	(aString isKindOf: String) ifFalse: [ self error: 'I require a String: ' , aString printString ].

	^ self basicNew initialize default: aString label: stringName ! !

!StringEntryPanel class methodsFor: 'instance creation' stamp: 'KenD 12/22/2016 16:09:23'!
new

	^ self basicNew initialize default: '' label: 'String Value'.! !

!SignMorph methodsFor: 'accessing' stamp: 'KenD 10/5/2013 16:58'!
object

	^ object! !

!SignMorph methodsFor: 'delegation' stamp: 'KenD 10/5/2013 16:58'!
doesNotUnderstand: aMessage
	"Delegate operations to the object I represent and Answer the result."

	^ aMessage sendTo: object.! !

!SignMorph methodsFor: 'initialization' stamp: 'KenD 7/17/2015 14:45'!
forObject: anObject

	| nameString |
	
	nameString := anObject name ifNotNil: [ :name | name ] ifNil: [ anObject printString ].
	super initialize.  "Initialize extent as required by #redrawNeeded"
	object := anObject.
	self contents: nameString
! !

!SignMorph methodsFor: 'initialization' stamp: 'KenD 10/5/2013 17:23'!
forObject: anObject withName: aString

	super initialize.  "Initialize extent as required by #redrawNeeded"
	object := anObject.
	self contents: aString asString
! !

!SignMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/20/2015 08:21'!
rejectDropMorphEvent: dropEvent
	"The receiver has been rejected.  Disappear"
	
"	Transcript newLine; show: 'SignMorph>>rejectDropMorphEvent'. "
	self hide; delete.
	self world ifNotNil: [ :w | w activeHand removeMorph: self ].
! !

!SignMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/6/2016 18:53:56'!
valueWhenDropped

	^ self object ! !

!SignMorph class methodsFor: 'instance creation' stamp: 'KenD 10/5/2013 16:54'!
contents: someString

	Error signal: 'USE: ', self name asString, ' forObject: anObject'
	! !

!SignMorph class methodsFor: 'instance creation' stamp: 'KenD 10/5/2013 16:52'!
forObject: anObject

	^ self basicNew forObject: anObject ! !

!SignMorph class methodsFor: 'instance creation' stamp: 'KenD 10/5/2013 17:28'!
forObject: anObject withName: aString

	^ self basicNew forObject: anObject withName: aString! !

!SignMorph class methodsFor: 'instance creation' stamp: 'KenD 10/5/2013 16:54'!
new

	Error signal: 'USE: ', self name asString, ' forObject: anObject'
	! !

!SignMorph class methodsFor: 'examples' stamp: 'KenD 10/5/2013 17:03'!
example1
"
	self example1
"
	| newInst |
	newInst := SignMorph forObject: Preferences standardListFont.
	newInst openInWorld.
	
	^ newInst ! !

!SignMorph class methodsFor: 'examples' stamp: 'KenD 10/5/2013 17:27'!
example2
"
	self example2
"
	| newInst  |
	newInst := SignMorph forObject: #giveMeASign .
	newInst openInWorld.
	
	^ newInst ! !

!SignMorph class methodsFor: 'examples' stamp: 'KenD 10/5/2013 17:28'!
example3
"
	self example3
"
	| newInst rect |
	rect := Rectangle origin: 1@2 corner: 2@3.
	newInst := SignMorph forObject: rect withName: 'aRectangle(' , rect hash asString, ')' .
	newInst openInWorld.
	
	^ newInst ! !

!SignMorph class methodsFor: 'examples' stamp: 'KenD 11/14/2013 14:35'!
example4
"
	self example4
"
	| newInst rect |
	rect := Rectangle origin: 1@2 corner: 2@3.
	newInst := SignMorph forObject: rect .
	newInst openInWorld.
	
	^ newInst ! !

!SignMorph class methodsFor: 'new-morph participation' stamp: 'KenD 10/5/2013 16:55'!
includeInNewMorphMenu 

	^ false! !

!MultiSelectMenu methodsFor: 'events-processing' stamp: 'KenD 12/17/2016 14:36:43'!
accept

	self modalSelection: self result! !

!MultiSelectMenu methodsFor: 'events-processing' stamp: 'KenD 12/17/2016 14:33:01'!
cancel

	self modalSelection: self seed! !

!MultiSelectMenu methodsFor: 'events-processing' stamp: 'KenD 12/17/2016 15:59:22'!
toggle: nameSymbol

	| index bit |
	index := self choices indexOf: nameSymbol.
	bit := index - 1.
	
	(index = 1)
	ifTrue:  [  
		self result: 0.
		self clearAllButZero.
	]
	ifFalse: [ | menuItem bitClear |
		menuItem := self itemFor: nameSymbol.
		bitClear := (self result bitAt: bit) isZero.
		bitClear 
			ifTrue: [ "Set bit"
				self result: (self result bitAt: bit put: 1).
				menuItem contents: ('<on>', menuItem contents).
			]
			ifFalse: [ "Clear bit"
				self result: (self result bitAt: bit put: 0).
				menuItem contents: ('<off>', menuItem contents).
			] 
	].
	
	self updateZeroMarker.! !

!MultiSelectMenu methodsFor: 'accessing' stamp: 'KenD 12/17/2016 13:31:57'!
choices

	^ choices ! !

!MultiSelectMenu methodsFor: 'accessing' stamp: 'KenD 12/17/2016 14:36:58'!
result

	^ result ! !

!MultiSelectMenu methodsFor: 'accessing' stamp: 'KenD 12/17/2016 14:37:13'!
result: newResult

	result := newResult ! !

!MultiSelectMenu methodsFor: 'accessing' stamp: 'KenD 12/17/2016 13:32:09'!
seed

	^ seed ! !

!MultiSelectMenu methodsFor: 'initialization' stamp: 'KenD 5/15/2018 00:10:12'!
choices: aSymbolCollection seed: initialValue

	super initialize.
	self stayUp: true.
	choices := aSymbolCollection.
	seed := initialValue.
	result := seed.
	"Add my selections" 
	self choices do: [ :nameSymbol |
		self add: (self tagFromSeedFor: nameSymbol)
			  target: self 
			  action: #toggle: 
			  argument: nameSymbol.
	].
	self updateZeroMarker.
		
	self addLine.
	
	self add: 'ACCEPT' 
		  target: self 
		  action: #accept.
	self add: 'CANCEL' 
		  target: self 
		  action: #cancel.
! !

!MultiSelectMenu methodsFor: 'initialization' stamp: 'KenD 12/17/2016 14:35:16'!
choices: aSymbolCollection seed: initialValue title: aString

	self choices: aSymbolCollection seed: initialValue.
	self addTitle: aString.! !

!MultiSelectMenu methodsFor: 'private' stamp: 'KenD 12/17/2016 15:49:12'!
clearAllButZero
	"Set 'zero' selector to '<on>' => everyone else is '<off>'"

	| zeroName |
	zeroName := self choices at: 1.
	self submorphsDo: [ :item |
		((item isKindOf: MenuItemMorph) and: [ self choices includes: item contents ])
		ifTrue: [ (item contents = zeroName)
				ifFalse: [ item contents: '<off>', item contents ]
				ifTrue:  [ item contents: '<on>' , item contents ]. "zero marker"
		]
	]  
! !

!MultiSelectMenu methodsFor: 'private' stamp: 'KenD 12/17/2016 15:12:07'!
clearForZero
	"Set 'zero' selector to '<on>'"

	| zeroName zeroItem |
	zeroName := self choices at: 1.
	zeroItem := self submorphs detect:
		[ :item | (item isKindOf: MenuItemMorph) and: [ item contents = zeroName ] ].
	zeroItem contents: '<off>' , zeroName asString.! !

!MultiSelectMenu methodsFor: 'private' stamp: 'KenD 12/17/2016 15:34:11'!
itemFor: nameSymbol

	^ self submorphs detect: [ :item |
			(item isKindOf: MenuItemMorph) 
				and: [ item contents = nameSymbol ]
	  ]! !

!MultiSelectMenu methodsFor: 'private' stamp: 'KenD 12/17/2016 15:12:15'!
setForZero
	"Set 'zero' selector to '<on>'"

	| zeroName zeroItem |
	zeroName := self choices at: 1.
	zeroItem := self submorphs detect:
		[ :item | (item isKindOf: MenuItemMorph) and: [ item contents = zeroName ] ].
	zeroItem contents: '<on>' , zeroName asString.! !

!MultiSelectMenu methodsFor: 'private' stamp: 'KenD 12/17/2016 14:08:36'!
tagFromSeedFor: nameSymbol
	"Answer nameSymbol preceeded by '<on>' or '<off>'"

	| index bit |
	index := self choices indexOf: nameSymbol.
	bit := index - 1.
	
	^ ((seed bitAt: bit) isZero)
		ifTrue:   [ '<off>' , nameSymbol asString ]
		ifFalse:  [ '<on>'  , nameSymbol asString ]! !

!MultiSelectMenu methodsFor: 'private' stamp: 'KenD 12/17/2016 15:24:12'!
updateZeroMarker
	"If no choices checked, set zero'th choice, else clear it"

	(self result isZero)
		ifTrue:  [ self clearAllButZero ]
		ifFalse: [ self clearForZero ].! !

!MultiSelectMenu class methodsFor: 'instance creation' stamp: 'KenD 12/17/2016 14:01:56'!
choices: aSymbolCollection seed: initialValue
"
	(MultiSelectMenu choices: TextEmphasis choices seed: 3) openInHand.
"
	^ self new choices: aSymbolCollection seed: initialValue! !

!MultiSelectMenu class methodsFor: 'instance creation' stamp: 'KenD 12/17/2016 14:39:40'!
choices: aSymbolCollection seed: initialValue title: aString
"
	(MultiSelectMenu choices: TextEmphasis choices seed: 3 title: 'Text Emphasis') invokeModal inspect.
"
	^ self new choices: aSymbolCollection seed: initialValue title: aString ! !

!MultiSelectMenu class methodsFor: 'new-morph participation' stamp: 'KenD 12/23/2016 09:13:31'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 2/28/2015 11:04'!
disablesEdition

	^ self hasProperty: #disablesEdition! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:07'!
entryChars

	^ entryChars! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 10/28/2015 20:21'!
fontToUse

	^ Preferences standardListFont ! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'jmv 4/25/2019 10:08:07'!
measureContents
	| myFont |

	(self numCharsToHold) ifNil: [ ^ super measureContents ].
	
	myFont := self fontToUse.
	"Use a wide character as sample for the character width"
	^ 4 + ((myFont widthOfString: 'A') * (self numCharsToHold max: 3)  @ myFont lineSpacing).! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:06'!
numCharsToHold

	^ numCharsToHold! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 12/2/2013 16:53'!
setValue: newValue

	(theValue == newValue) ifTrue: [ ^self ].
	theValue := newValue.
	self contents: (self toString value: self value).
	self morphExtent: self measureContents + 4.
	self valueUpdator ifNotNil: [ :update | update value: newValue]! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:08'!
toString

	^ toString! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:08'!
validator

	^ validator! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 16:22'!
value

	^ theValue ! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:15'!
valueAccessor
	
	^ valueAccessor! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:16'!
valueAccessor: aOneArgBlock
	
	valueAccessor := aOneArgBlock! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:16'!
valueUpdator
	
	^ valueUpdator! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:16'!
valueUpdator: aOneArgBlock
	
	valueUpdator := aOneArgBlock! !

!SimpleNumberEntryMorph methodsFor: 'drawing' stamp: 'KenD 6/1/2020 15:39:06'!
displayTextCursorAtX: x top: top bottom: bottom emphasis: anEmphasis on: aCanvas

	"Displace my text 4@4 from parent"
	super displayTextCursorAtX: x + 4 top: top + 2 bottom: bottom + 2 emphasis: anEmphasis on: aCanvas! !

!SimpleNumberEntryMorph methodsFor: 'drawing' stamp: 'KenD 6/1/2020 15:29:07'!
drawOn: aCanvas

	self hasSelection     ifTrue: [ self drawSelectionOn: aCanvas ].
	self hasTextCursor ifTrue: [ self drawTextCursorOn: aCanvas ].
	aCanvas
		drawString: contents
		at: 4@4
		font: self fontToUse
		color: color.
		
	aCanvas
		frameRectangle: (0@0 extent: self morphExtent)
		color: Color black
		borderWidth: 2
		borderStyleSymbol: #simple
! !

!SimpleNumberEntryMorph methodsFor: 'drawing' stamp: 'KenD 6/1/2020 15:47:50'!
drawSelectionOn: aCanvas
	| rightX leftX bottom |

	bottom _ self baseFont lineSpacing.
	leftX _ self fontToUse widthOfString: contents from: 1 to: editor startIndex-1.
	leftX _ leftX min: extent x.
	rightX _ self fontToUse widthOfString: contents from: 1 to: editor stopIndex-1.
	rightX _ rightX min: extent x.

	aCanvas
		fillRectangle: (leftX+4 @ 4 corner: (rightX + 4) @ (bottom + 3)) "displace from parent"
		color: (Theme current textHighlightFocused: self hasKeyboardFocus)! !

!SimpleNumberEntryMorph methodsFor: 'geometry' stamp: 'KenD 8/24/2015 19:58'!
minumExtent

	^ self measureContents + self extentBorder ! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 4/11/2017 16:15:01'!
keyStroke: aKeyboardEvent
	"Check for legal char if in ASCII range, else let super so it"
	
	(aKeyboardEvent isKeystroke) 
		ifTrue: [ | keyChar |
			keyChar := aKeyboardEvent keyCharacter.
			(self entryChars includes: keyChar)
				ifFalse: [ "reject"
					self flash.
					^ self
				]
				ifTrue: [ "Allow selection replacement"
						((self hasSelection not) 
						and: [self contents size >= self numCharsToHold])
							ifTrue: [ self flash. ^ self ]
				]
		].

	super keyStroke: aKeyboardEvent! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 12/19/2013 17:14'!
keyboardFocusChange: aBoolean 

	super keyboardFocusChange: aBoolean.
	aBoolean ifFalse: [ self crAction ifNotNil: [ :thunk | thunk value ]].! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 9/1/2016 15:26:39'!
mouseLeave: event
	super mouseLeave: event.
	self crAction ifNotNil: [ :thunk | thunk value ]! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 12/17/2013 14:03'!
refreshValueFrom: model
	"Refresh my value from model"
	
	self valueAccessor ifNotNil: [ :accessor | 
				theValue := accessor value: model.
				self contents: (self toString value: self value).
				self morphExtent: self measureContents + 4.
				self redrawNeeded
	]! !

!SimpleNumberEntryMorph methodsFor: 'initialization' stamp: 'KenD 5/22/2020 13:52:45'!
legalChars: legalEntryChars numCharsToHold: nilOrInteger value: initialValue validator: aClosureToValidate toString: aClosureForString

	entryChars := legalEntryChars.
	numCharsToHold := nilOrInteger.
	theValue := initialValue.
	validator := aClosureToValidate.
	toString := aClosureForString.
	self contents: (self toString value: initialValue).
	self color: Color transparent.
	self crAction: [ | newString newVal |
		newString := self editor string.
		(newString size = 0)
			ifTrue: [ newVal := nil ] "Empty String"
			ifFalse: [ newVal := self validator value: newString ].
		newVal ifNil: [ self flash.  "rejected"
						self contents: (self toString value: self value).
				 ]
				 ifNotNil: [ self setValue: newVal ]. "accepted"
	].
	self numCharsToHold 
		ifNotNil: [ | desiredExtent |
			desiredExtent := self measureContents + 4.
			self layoutSpec: (LayoutSpec 
				fixedWidth: desiredExtent x 
				fixedHeight: desiredExtent y
				offAxisEdgeWeight: #center)
	].
! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:04'!
circleDegrees
	"Answer 0..360.0 or nil"

	^ self new
			legalChars: '12345.67890'
		     numCharsToHold: 5 
			value: 0 
			validator: [ :str | | degrees |
				degrees := [ str asNumber ] on: Error do: [ -1 ].
				(degrees between: 0 and: 360) 
					ifTrue: [ degrees ]
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/2/2013 16:23'!
circleDegreesExact
	"Answer 0..360 or nil"

	^ self new
			legalChars: '1234567890' "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | degrees |
				degrees := [ str asNumber ] on: Error do: [ -1 ].
				(degrees between: 0 and: 360) 
					ifTrue: [ degrees ]
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/2/2013 16:23'!
circleDegreesRounded
	"Answer 0..360.0 or nil"

	^ self new
			legalChars: '12345.67890' "Includes $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | degrees |
				degrees := [ str asNumber ] on: Error do: [ -1 ].
				(degrees between: 0 and: 360) 
					ifTrue: [ degrees rounded ] 
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 9/18/2019 15:13:43'!
floatDefault: aReal  maxNumChars: numChars
	"Any real number"
	
	(aReal isKindOf: Number) 
		ifFalse: [ self error: 'Expected an real number : ' , aReal printString ].

	^ self new
			legalChars: '12345.67890'  
		     numCharsToHold: numChars
			value: aReal 
			validator: [ :str |  [ str asNumber ] on: Error do: [ -1 ] ] 
			toString:  [ :n | n printStringFractionDigits: 4 ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:01'!
hexEntryOfSize: numChars
	"Answer 0.FF* or nil"
	"E.g. size = 6 for  'FFFFFF' "

	^ self new
			legalChars: '1234567890ABCDEFabcdef'
		     numCharsToHold: numChars 
			value: 0 
			validator: [ :str | 
				(str size <= numChars)
				ifTrue: [[ ('16r', str asUppercase) asNumber ] on: Error do: [ nil ]]
				ifFalse: [ nil ]]
			toString: [ :n | n printStringHex ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'jmv 2/13/2014 13:52'!
hexRGBEntry
	"Answer 0.FFFFFF or nil"

	^ self new
			legalChars: '1234567890ABCDEFabcdef'
		     numCharsToHold: 6 
			value: 0 
			validator: [ :str | 
				(str size <= 6)
				ifTrue: [[ ('16r', str asUppercase) asNumber ] on: Error do: [ nil ]]
				ifFalse: [ nil ]]
			toString: [ :n |
				n printStringBase: 16 length: 6 padded: true ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/21/2016 14:57:59'!
integerDefault: anInteger  maxNumChars: numChars
	"Any Integer"
	
	(anInteger isKindOf: Integer) 
		ifFalse: [ self error: 'Expected an Integer : ' , anInteger printString ].

	^ self new
			legalChars: '1234567890'  
		     numCharsToHold: numChars
			value: anInteger 
			validator: [ :str |  [ str asNumber ] on: Error do: [ -1 ] ] 
			toString:  [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 6/1/2020 14:52:10'!
integerRangeFrom: min to: max maxNumChars: numChars
	"min..max"

	^ self new
			legalChars: '1234567890'  
		     numCharsToHold: numChars
			value: min
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: min and: max) ifFalse: [ nil ] ifTrue: [ val truncated ]
			] 
			toString: [ :n | n truncated printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:01'!
percent
	"Answer 0..100.0 or nil"

	^ self new
			legalChars: '12345.67890'
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:01'!
percentExact
	"Answer 0..100 or nil"

	^ self new
			legalChars: '1234567890'  "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/15/2013 19:57'!
percentForFixedFactor: factorMax
	"Entry and display as 0..100; internal value as 0.0..factorMax
	where factorMax is an integer."
"
	SimpleNumberEntryMorph percentForFixedFactor: 255.
	100% -> 255
"
	| ratio |
	ratio := 100 / factorMax.
	^ self new
			legalChars: '1234567890'  "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ (val / ratio) rounded ]
			] 
			toString: [ :n | (n * ratio) rounded printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/15/2013 19:58'!
percentForRealFactor: factorMax
	"Entry and display as 0..100; internal value as 0.0..factorMax
	where factorMax is a float."
"
	SimpleNumberEntryMorph percentForRealFactor: 1.0
	40% -> 0.4
"
	| ratio |
	ratio := 100 / factorMax.
	^ self new
			legalChars: '1234567890'  "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ val / ratio ]
			] 
			toString: [ :n | (n * ratio) rounded printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/16/2013 17:08'!
realFactor: factorMax
	"0.0..factorMax
	where factorMax is a float."

	^ self new
			legalChars: '12345.67890'  
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 1.0) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n asFloat printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/16/2013 17:09'!
realFactor: factorMax maxNumChars: numChars
	"0.0..factorMax
	where factorMax is a float."

	^ self new
			legalChars: '12345.67890'  
		     numCharsToHold: numChars
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 1.0) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n asFloat printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:02'!
rgbOneOf
	"Answer 0..255 or nil"

	^ self new
			legalChars: '1234567890'
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val |
				 val := [str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 255) 
					ifTrue: [ val ]
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 3/29/2017 13:56:25'!
singleCharSelection: aChar
	"Really a character editor"

	^ self new
			legalChars: '1234567890',
						'abcdefghijklmnopqrstuvwxyz',
						'ABCDEFGHIJKLMNOPQRSTUVWXYZ' 
		     numCharsToHold: 1 
			value: aChar 
			validator: [ :str | str  ]
			toString: [ :c | c asString ]! !

!SimpleNumberEntryMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:07'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!SimpleNumberEntryMorph class methodsFor: 'instance creation' stamp: 'KenD 11/21/2013 14:35'!
legalChars: entryChars numCharsToHold: nilOrInteger value: initialValue validator: aClosureToValidate toString: aClosureForString

	self new legalChars: entryChars numCharsToHold: nilOrInteger value: initialValue validator: aClosureToValidate toString: aClosureForString! !

!FontMorph methodsFor: 'geometry' stamp: 'KenD 3/7/2019 13:40:47'!
adjustExtent 
	"Some aspect of my font has changed. Don't shrink beyond minimum"

	self morphExtent: (self morphExtent min: self minimumExtent)! !

!FontMorph methodsFor: 'geometry' stamp: 'KenD 3/28/2020 08:18:42'!
labelMorphOffset
	"LabelMorph is offset by combinedBorder"
	| combinedBorder |
	combinedBorder := self labelMorph extentBorder 
							+ self borderWidth
							+ (self font pointSize / 2).
	
	^ (combinedBorder)@(combinedBorder)! !

!FontMorph methodsFor: 'initialization' stamp: 'KenD 11/29/2016 09:54:03'!
defaultColor
	^ super defaultColor muchLighter ! !

!FontMorph methodsFor: 'initialization' stamp: 'KenD 11/29/2016 10:08:49'!
font: aFont emphasis: emphasisCode

	self font: aFont emphasis: emphasisCode string: self class defaultString ! !

!FontMorph methodsFor: 'initialization' stamp: 'KenD 10/16/2020 14:54:01'!
font: aFont emphasis: emphasisCode string: aString
	"I am a WidgetMorph showing a LabelMorph.
	Make it so."
	
	labelMorph := LabelMorph new
				initWithContents: aString 
				font: aFont 
				emphasis: emphasisCode.
	self morphExtent: self minimumExtent.
	self addMorph: labelMorph.
	labelMorph morphPosition: self labelMorphOffset.! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:53:07'!
emphasis

	^ self labelMorph emphasis ! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:53:02'!
emphasis: emphasisCode

	^ self labelMorph emphasis: emphasisCode ! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:52:57'!
font

	^ self labelMorph font! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:52:52'!
font: aFont

	self labelMorph font: aFont.
	self adjustExtent! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:56:44'!
label

	^ self labelMorph contents! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:26:47'!
labelMorph

	^ labelMorph! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 5/11/2019 13:33:39'!
minimumExtent

	^ (2 * self borderWidth) + self labelMorph minimumExtent + 18! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 09:59:09'!
morphExtent: aPoint 
	"Set the receiver's extent to value provided. Honor my minimumExtent."

	super morphExtent: (aPoint max: self minimumExtent)! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:56:09'!
string

	^ self labelMorph contents! !

!FontMorph methodsFor: 'accessing' stamp: 'KenD 11/29/2016 10:56:17'!
string: aString

	self labelMorph contents: aString.
	self adjustExtent ! !

!FontMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/6/2016 18:56:31'!
valueWhenDropped

	^ self font! !

!FontMorph class methodsFor: 'defaults' stamp: 'KenD 11/29/2016 09:25:45'!
defaultEmphasis
	"Answer the emphasis code  to display in the typical case"

	^  AbstractFont normalCode! !

!FontMorph class methodsFor: 'defaults' stamp: 'KenD 11/29/2016 10:08:34'!
defaultString
	"Answer a string to display in the typical case"

	^  'AbBbCc $123'! !

!FontMorph class methodsFor: 'instance creation' stamp: 'KenD 11/29/2016 10:08:53'!
font: aFont

	^ self new font: aFont emphasis: self defaultEmphasis string: self defaultString! !

!FontMorph class methodsFor: 'instance creation' stamp: 'KenD 11/29/2016 10:08:56'!
font: aFont emphasis: emphasisCode

	^ self new font: aFont emphasis: emphasisCode string: self defaultString ! !

!FontMorph class methodsFor: 'instance creation' stamp: 'KenD 11/29/2016 09:21:59'!
font: aFont emphasis: emphasisCode string: aString

	^ self new font: aFont emphasis: emphasisCode string: aString! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/16/2013 14:58'!
borderWidth

	^ borderWidth ! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/15/2013 20:57'!
frameSelector

	^ frameSelector! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/15/2013 21:02'!
frameSelector: aSymbol

	(#(simple inset raised) includes: aSymbol) ifFalse: [
		 Error signal: aSymbol printString, ' must be #raised, #inset, or #simple'
	].
	frameSelector := aSymbol! !

!FrameMorph methodsFor: 'events-processing' stamp: 'KenD 9/15/2013 21:15'!
cycleBorderColor
	"Change border color to next in Colors"

	(colorIndex = self class colors size)
	ifTrue:  [colorIndex := 1]
	ifFalse: [colorIndex := colorIndex + 1].

	self borderColor: (self class colors at: colorIndex).

	^ self borderColor! !

!FrameMorph methodsFor: 'events-processing' stamp: 'jmv 2/13/2014 14:24'!
stepAt: millisecondClockValue

	self cycleBorderColor ! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:45'!
defaultBorderColor
	"answer the default border color/fill style for the receiver"
	
	^  self class colors first! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:41'!
defaultBorderWidth
	"answer the default border width for the receiver"
	
	^ 8! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 9/17/2013 15:25'!
defaultColor

     ^ Color transparent! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:59'!
defaultExtent

	^ 100 @ 60! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:41'!
defaultFrameSelector
	"answer the default frame selector for the receiver"
	
	^ #simple! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:58'!
initialize

	super initialize.

	colorIndex := 1.
	self borderColor:    self defaultBorderColor;
		 frameSelector: self defaultFrameSelector;
		 borderWidth:    self defaultBorderWidth;
		 morphExtent:    self defaultExtent.
! !

!FrameMorph methodsFor: 'drawing' stamp: 'KenD 10/12/2013 17:29'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."

	aCanvas
		frameRectangle: (0@0 extent: extent)
		color: borderColor
		borderWidth: borderWidth
		borderStyleSymbol: frameSelector
! !

!FrameMorph methodsFor: 'geometry testing' stamp: 'KenD 9/16/2013 15:03'!
morphContainsPoint: aPoint
	"Only the frame contains a point"
	| outerExtent innerExtent |
	outerExtent := (0@0 extent: self morphExtent).
	innerExtent := outerExtent insetBy: self borderWidth.
	^ (outerExtent containsPoint: aPoint)
		and: [(innerExtent containsPoint: aPoint) not].! !

!FrameMorph methodsFor: 'events' stamp: 'KenD 9/15/2013 21:35'!
stopStepping

	self world stopStepping: self.! !

!FrameMorph class methodsFor: 'accessing' stamp: 'KenD 9/15/2013 21:05'!
colors

	^ Colors ! !

!FrameMorph class methodsFor: 'accessing' stamp: 'KenD 9/15/2016 15:55:19'!
setColors: colorArray
"
	self setColors: (Color orange mix: Color purple shades: 8).
	self example1.
"

	Colors := colorArray! !

!FrameMorph class methodsFor: 'examples' stamp: 'KenD 9/17/2013 15:23'!
example1
"
	self example1.
"
	| fm |
	fm := FrameMorph new..
	"fm cycleBorderColor."
	fm frameSelector: #simple.
	fm borderWidth: 8.
	fm morphPosition: 20@20.
	fm morphExtent: 200@100.
	fm openInWorld.
	fm startStepping.
"
	fm stopStepping.
"! !

!FrameMorph class methodsFor: 'class initialization' stamp: 'KenD 9/29/2013 15:43'!
initialize
"
	self initialize.
"
	Colors := { Color yellow. Color mustard. Color brown. }.! !

!RadioButtonMorph methodsFor: 'initialization' stamp: 'KenD 11/20/2013 14:05'!
defaultDiameter

	^ self class defaultDiameter ! !

!RadioButtonMorph methodsFor: 'initialization' stamp: 'KenD 11/20/2013 14:07'!
initialize

	super initialize.
	isSelected := false.
	self borderColor: Color black.
	self borderWidth: 4.
	self ofSize: self defaultDiameter! !

!RadioButtonMorph methodsFor: 'initialization' stamp: 'KenD 5/22/2020 13:52:10'!
ofSize: numPixels

	self morphExtent: numPixels @ numPixels.
	self layoutSpec: (LayoutSpec 
							fixedWidth: numPixels 
							fixedHeight: numPixels
							offAxisEdgeWeight:  #center) ! !

!RadioButtonMorph methodsFor: 'drawing' stamp: 'jmv 10/15/2020 19:21:31'!
drawOn: aCanvas 

	| rx ry |
	self revisar. "The morph should be specified better!!"
	rx _ extent x //2.
	ry _ extent y // 2.
	aCanvas ellipseCenterX: rx y: ry rx: rx ry: ry borderWidth: borderWidth borderColor: borderColor fillColor: color! !

!RadioButtonMorph methodsFor: 'event handling testing' stamp: 'KenD 11/19/2013 20:22'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"
	^true! !

!RadioButtonMorph methodsFor: 'event handling testing' stamp: 'KenD 11/19/2013 20:22'!
handlesMouseOver: evt
	"Do I want to receive mouseEnter: and mouseLeave: when the button is up and the hand is empty?" 
	^true! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/19/2013 20:16'!
isSelected

	^ isSelected ! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/20/2013 14:33'!
isSelected: aBoolean

	(isSelected := aBoolean)
		ifFalse: [self color: self defaultColor] 
		ifTrue: [self color: Color black. 
				 self triggerEvent: #radioSelection with: self 
		]
! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/24/2013 16:56'!
select
	"Select me if unselected"

	(self isSelected) ifFalse: [ self isSelected: true ]
! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/19/2013 20:26'!
toggleSelection

	self isSelected: self isSelected not
! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'jmv 1/5/2021 14:26:03'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition

	((self containsGlobalPoint: aMouseButtonEvent eventPosition) and: [self isSelected not])
		ifTrue: [ self isSelected: true ]
! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'KenD 11/20/2013 14:20'!
mouseEnter: event
	"The mouse has entered the area of the receiver"

	self isSelected ifFalse: [ self color: Color green ]! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'KenD 11/19/2013 20:25'!
mouseLeave: event
	"The mouse has left the area of the receiver"

	self isSelected ifFalse: [ self color: self defaultColor ]! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'KenD 11/19/2013 20:57'!
update: aParameter

	self redrawNeeded! !

!RadioButtonMorph class methodsFor: 'accessing' stamp: 'KenD 11/20/2013 14:05'!
defaultDiameter

	^ DefaultDiameter ! !

!RadioButtonMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!RadioButtonMorph class methodsFor: 'class initialization' stamp: 'KenD 11/20/2013 14:09'!
initialize
"
	self initialize.
"

	DefaultDiameter := 20. "Pixels"! !

!RadioButtonMorph class methodsFor: 'instance creation' stamp: 'KenD 11/19/2013 20:05'!
ofSize: numPixels

	^ self new ofSize: numPixels! !

!String methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 11:56:12'!
asTextEmphasis

	^ TextEmphasis fromChoiceString: self! !

!String methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 12:11:13'!
asTextEmphasisCode

	^ TextEmphasis codeForChoice: self! !

!TextAlignment class methodsFor: '*morphic-misc1' stamp: 'KenD 3/22/2017 11:00:32'!
choices

	^ #(leftFlush rightFlush centered justified)! !

!TextAlignment class methodsFor: '*morphic-misc1' stamp: 'KenD 3/23/2017 08:40:22'!
codeForChoice: aStringOrSymbol
	"On error, answer 0 as the default value, else index - 1"
"	
	self codeForChoice: #centered.
"
	^ (self choices indexOf: aStringOrSymbol asSymbol ifAbsent: [ 1 ]) - 1! !

!TextAlignment class methodsFor: '*morphic-misc1' stamp: 'KenD 3/22/2017 11:07:38'!
fromChoiceString: aStringOrSymbol

	^self new alignment: (self codeForChoice: aStringOrSymbol)! !

!TextAlignment class methodsFor: '*morphic-misc1' stamp: 'KenD 3/23/2017 08:29:18'!
fromUser
"
   self fromUser inspect.
"

	^ self fromUser: 0! !

!TextAlignment class methodsFor: '*morphic-misc1' stamp: 'KenD 3/23/2017 08:30:12'!
fromUser: defaultChoiceCode
	"Put up a menu and answer an instance of me"
"
	(TextAlignment fromUser: 3) inspect.
"
		
	| aMenu |

	aMenu _ MenuMorph new defaultTarget: self.
	
	aMenu addTitle: 'Text Alignment'.
	self choices do: [ :choice | 
		aMenu add: choice asString 
				target: self
			     selector: #privateSetResult:inMorph:
				argumentList: { choice. aMenu. }
	].
	aMenu invokeModal.
	^ self perform: (aMenu valueOfProperty: #resultValue
									 ifAbsent: [ self stringForCode: defaultChoiceCode ])! !

!TextAlignment class methodsFor: '*morphic-misc1' stamp: 'KenD 3/23/2017 08:27:15'!
privateSetResult: aResult inMorph: aMenuMorph
	"Used by self>>fromUser: to let a MenuMorph transmit the result"

	aMenuMorph setProperty: #resultValue toValue: aResult ! !

!TextAlignment class methodsFor: '*morphic-misc1' stamp: 'KenD 3/23/2017 09:05:18'!
stringForCode: alignmentCode
"
	self stringForCode: 3.
"
	^ self choices at: alignmentCode + 1 ifAbsent: [ self leftFlush ]! !

!TextEmphasis methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 12:21:17'!
asUIString
	"Return a string for UI text display"
	
	^ self class stringForCode: self emphasisCode! !

!TextEmphasis class methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 08:43:02'!
choices

	^ #(normal bold italic underline struckThrough superscript subscript withST80Glyphs)! !

!TextEmphasis class methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 09:04:20'!
codeForChoice: aStringOrSymbol
	"Take emphasis choices and return a code.
	e.g. 'bold+italic' -> 3"

	| collectedChoices |
	collectedChoices := aStringOrSymbol findTokens: $+.
	(collectedChoices size < 1)
		ifTrue: [ self error: 'Bad choice for TextEmphasis: ', aStringOrSymbol asString ].
	(collectedChoices allSatisfy: [ :choice | self choices includes: choice ])
		ifFalse: [ self error: 'Bad choice for TextEmphasis: ', aStringOrSymbol asString ].
		
	^ collectedChoices 
				inject: 0 
				into: [:sum :choice | sum + (self privateCodeForChoice: choice) ]
	! !

!TextEmphasis class methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 11:52:54'!
fromChoiceString: aStringOrSymbol
	"Answer an instance of me"
	
	^ self new emphasisCode: (self codeForChoice: aStringOrSymbol)! !

!TextEmphasis class methodsFor: '*morphic-misc1' stamp: 'KenD 12/18/2016 09:07:04'!
fromUser

	^ self fromUser: 0
	! !

!TextEmphasis class methodsFor: '*morphic-misc1' stamp: 'KenD 12/17/2016 16:08:14'!
fromUser: defaultChoiceCode
	"Put up a menu and answer an instance of me"
"
	(TextEmphasis fromUser: 3) asUIString.
"
	| emphasisCode |
	emphasisCode :=  (MultiSelectMenu 
							choices: TextEmphasis choices
							seed: defaultChoiceCode 
							title: 'Text Emphasis') invokeModal. 
	^ self new emphasisCode: emphasisCode ! !

!TextEmphasis class methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 09:02:18'!
privateCodeForChoice: aStringOrSymbol
	"Take emphasis choice and return a code.  E.g. 'bold' -> 1
	Here, a multi-choice, like  'bold+italic', is an error.
	aStringOrSymbol MUST be in self choices"

	| indexLessTwo |
	indexLessTwo
		:= ((self choices indexOf: aStringOrSymbol
					 ifAbsent: [ self error: 
						'Bad choice for TextEmphasis: ', aStringOrSymbol asString ])
			- 2 ).
	^ (indexLessTwo < 0)
		ifTrue: [ 0 ]
		ifFalse: [ 1 bitShift: indexLessTwo ]
		
	! !

!TextEmphasis class methodsFor: '*morphic-misc1' stamp: 'KenD 12/10/2016 11:46:59'!
stringForCode: emphasisCode
	"Answer combined choices with $+.
	E.g. 3 -> 'bold+italic' "

	| stringResult |
	(emphasisCode isZero)
		ifTrue: [ ^ #normal asString ].

	stringResult := nil. 
	1 to: 7 do: [ :bitPos |
		((emphasisCode bitAt: bitPos) isZero)
			ifFalse: [ 
				(stringResult isNil)
					ifTrue: [ stringResult := self choices at: bitPos + 1 ]
					ifFalse: [ stringResult := stringResult
										, '+'
										,  (self choices at: bitPos + 1) 
					]
			]
	].
	
	^ stringResult! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 10/3/2019 09:16:03'!
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add morph-specific items to the given menu which was invoked by the given hand.  This method provides is invoked both from the halo-menu and from the control-menu regimes."

	aCustomMenu  addLine.
	
	(Smalltalk includesKey: #VisualPropertyEditor)
		ifTrue: [ aCustomMenu addVisualProperties;
				  addLine;
				  add: 'show target halo' action: #addHalo;
				  add: 'show DropTarget for me' action: #showDropTarget
			 ]
		ifFalse: [ aCustomMenu add: 'edit my layoutSpec' action: #editMyLayoutSpec ]! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 10/12/2019 14:40:40'!
boxExtent
	"answer the extent to use in all the buttons. 
	 
	the label height is used to be proportional to the fonts preferences"
	| e |
	e _ Preferences windowTitleFont lineSpacing.
	^e@e! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 3/9/2020 12:59:53'!
changeColor
	"Change the color of the receiver -- triggered, e.g. from a menu"

	"Override default method"
	ImagePallet clickSelectColorsFor: self! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/17/2016 10:08:23'!
colorizeLayouts
	"debug"
	"Tinge rows red, columns blue"
	
	self submorphsDo: [ :s | s colorizeLayouts ].
	(self isKindOf: LayoutMorph) ifTrue: [
		(self direction = #horizontal)
		ifTrue:  [self color: (Color lightRed alpha: 0.5)] "Row"
		ifFalse: [self color: (Color skyBlue  alpha: 0.5)] "Column"
	]! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/18/2016 08:59:03'!
containingLayout
	"Answer the LayoutMorph containing me or nil"
	
	| container |
	container := self owner.
	container 
		ifNil: [ ^ container ] 
		ifNotNil: [
			(container isKindOf: LayoutMorph) 
				ifTrue: [ ^ container ]
				ifFalse: [ ^ owner containingLayout ]
		]! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:09'!
editMyLayoutSpec

	self layoutSpec ifNil: [ self layoutSpec: LayoutSpec keepMorphExtent ].
	LayoutSpecEditPanel open: self layoutSpec! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/16/2016 09:19:30'!
frameLayouts: colors depth: depth
	"Display frames around LayoutMorphs, then erase"
	
	(self isKindOf: LayoutMorph)
	ifFalse:  [
		self submorphsDo: [ :m | m frameLayouts: colors depth: depth ]
	]
	ifTrue: [ | frame colorIndex |
	 	colorIndex := 1 + depth mod: (colors size - 1).
		frame := FrameMorph new 
			:: borderColor: (colors at: colorIndex); 
			borderWidth: 2;
			morphExtent: self morphExtent;
			morphPosition: self morphPositionInWorld;
			yourself.
		frame openInWorld.
		self submorphsDo: [ :m | m frameLayouts: colors depth: depth + 1 ].
	].! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/16/2016 09:32:25'!
frameNonLayouts: colors depth: depth
	"Display frames around LayoutMorphs, then erase"
	
	(self isKindOf: LayoutMorph)
	ifTrue:  [
		self submorphsDo: [ :m | m frameNonLayouts: colors depth: depth ]
	]
	ifFalse: [ | frame colorIndex |
	 	colorIndex := 1 + depth mod: (colors size - 1).
		frame := FrameMorph new 
			:: borderColor: (colors at: colorIndex); 
			borderWidth: 2;
			morphExtent: self morphExtent;
			morphPosition: self morphPositionInWorld;
			yourself.
		frame openInWorld.
		self submorphsDo: [ :m | m frameNonLayouts: colors depth: depth + 1 ].
	].! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/30/2016 16:33:38'!
messageWindow

	^ MorphMessageBox openForMorph: self! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 2/14/2018 14:20:06'!
nameForWorkspace
	"Answer a name suitable for a Workspace variable"
	| displayName |
	displayName := self name.
	^ displayName 
		ifNotNil: [ | name |
			name := displayName asIdentifier: false.
			(name size < 1)
			ifTrue: [ self class name asLowercase , self identityHash asString ]
			ifFalse: [ name at: 1 put:  (name at: 1) asLowercase. name ]
		] 
		ifNil: [ self class name asLowercase , self identityHash asString ]! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/16/2016 15:16:18'!
shadowNonLayouts
	"debug"
	"Turn on dropShadows for submorphs' graphic elements"
	
	"Nota Bene: shadow submorphs FIRST or you will be recursively "
	" adding shadows to shadows to shadows to..."
	self submorphsDo: [ :s | s shadowNonLayouts ].
	(self isKindOf: LayoutMorph) ifFalse: [ self showDropShadow ]! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:21'!
showDropTarget
	"Display a DropTargetMorph for me"

	DropTargetMorph openFor: self! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/16/2016 15:12:54'!
showLayouts
	"debug"
	"Display frames around LayoutMorphs; then delete"
	| colors |
	colors := Color orange mix: Color blue shades: 12.
	self submorphsDo: [ :m | m frameLayouts: colors depth: 0 ].
	self redrawNeeded; refreshWorld.
	(Delay forSeconds: 5) wait.
	"Assume only my frames were added to World"
	self world submorphsDo: [ :s | (s isKindOf: FrameMorph) ifTrue: [ s delete ]].! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/16/2016 15:13:33'!
showNonLayouts
	"debug"
	"Display frames around LayoutMorphs; then delete"
	| colors |
	colors := Color orange mix: Color blue shades: 12.
	self submorphsDo: [ :m | m frameNonLayouts: colors depth: 0 ].
	self redrawNeeded; refreshWorld.
	(Delay forSeconds: 5) wait.
	"Assume only my frames were added to World"
	self world submorphsDo: [ :s | (s isKindOf: FrameMorph) ifTrue: [ s delete ]].! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 7/17/2015 18:32'!
signMorphForMe
	"Add a SignMorph for me in the active hand"

	(SignMorph forObject: self) openInHand ! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 9/16/2016 15:14:17'!
unShadowNonLayouts
	"debug"
	"Remove submorph dropShadows"
	(self isKindOf: LayoutMorph) ifFalse: [ self hideDropShadow ].
	self submorphsDo: [ :s | s unShadowNonLayouts ].! !

!LayoutMorph methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:22'!
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add morph-specific items to the given menu which was invoked by the given hand.  This method provides is invoked both from the halo-menu and from the control-menu regimes."

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu 
		"addLine;"
		add: 'edit me (a LayoutMorph)' action: #editMe! !

!LayoutMorph methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:14'!
direction: horizOrVert

	self flag: #jmvVer. "Move to category #accessing"

	direction := horizOrVert! !

!LayoutMorph methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:14'!
editMe

	LayoutMorphEditPanel open: self! !

!PluggableButtonMorph methodsFor: '*morphic-misc1' stamp: 'KenD 12/23/2016 09:19:33'!
font

	^ self fontToUse! !

!PluggableButtonMorph methodsFor: '*morphic-misc1' stamp: 'KenD 12/23/2016 09:22:52'!
font: someFont

	PopUpMenu inform: 'You can''t set this'! !

!PluggableButtonMorph methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2016 18:01:06'!
label

	^ label! !

!LayoutSpec methodsFor: '*morphic-misc1' stamp: 'KenD 4/18/2015 20:18'!
morph
	"For #showHalo"
	^ morph! !

!LayoutSpec methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:14'!
privateFixedHeight

	^ fixedHeight! !

!LayoutSpec methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:15'!
privateFixedWidth

	^ fixedWidth! !

!LayoutSpec methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:15'!
privateProportionalHeight

	^ proportionalHeight! !

!LayoutSpec methodsFor: '*morphic-misc1' stamp: 'KenD 12/24/2013 15:15'!
privateProportionalWidth

	^ proportionalWidth ! !
AddedCursors initialize!
FrameMorph initialize!
RadioButtonMorph initialize!
MorphicMisc1Package postPackageInstall!
