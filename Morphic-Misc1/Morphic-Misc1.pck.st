'From Cuis 6.0 [latest update: #5202] on 29 May 2022 at 7:38:24 am'!
'Description Various basic morphs used by several packages -- KenD'!
!provides: 'Morphic-Misc1' 1 209!
!requires: 'Cuis-Base' 50 4946 50 5000!
!requires: 'Color-Extras' 1 4 nil!
!requires: 'Morphic-Widgets-Extras' 1 37 nil!
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

!MorphicMisc1Package class methodsFor: 'installing' stamp: 'KenD 5/29/2022 07:38:12'!
prePackageInstall

	"Check that any method in base image that I wish to override has not changed"
self halt.
	"Morph>>changeColor
	 Last updated   2013-03-05T13:29:00+00:00 @@"
	((Morph methodDictionary at: #changeColor) dateAndTime 
		=
	  (DateAndTime
				year: 2013
				month: 3
				day: 5
				hour: 13
				minute: 29
				second: 0))
	ifFalse: [
		self assert: (PopUpMenu confirm: 
'I am about to replace base method #Morph>>changeColor .
This method has already been changed by someone.
OK to replace?  Y->OK; N->fail. ')
	].
	"OK from here.."

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

!classDefinition: #PalletLayoutMorph category: 'Morphic-Misc1'!
LayoutMorph subclass: #PalletLayoutMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PalletLayoutMorph class' category: 'Morphic-Misc1'!
PalletLayoutMorph class
	instanceVariableNames: ''!

!classDefinition: #BorderedImageMorph category: 'Morphic-Misc1'!
ImageMorph subclass: #BorderedImageMorph
	instanceVariableNames: 'borderStyle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'BorderedImageMorph class' category: 'Morphic-Misc1'!
BorderedImageMorph class
	instanceVariableNames: ''!

!classDefinition: #InnerPluggableImagePallet category: 'Morphic-Misc1'!
InnerPluggableMorph subclass: #InnerPluggableImagePallet
	instanceVariableNames: 'nameImageCollection imageFilter imageExtent calculatedExtent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'InnerPluggableImagePallet class' category: 'Morphic-Misc1'!
InnerPluggableImagePallet class
	instanceVariableNames: ''!

!classDefinition: #PluggableImagePallet category: 'Morphic-Misc1'!
PluggableScrollPane subclass: #PluggableImagePallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PluggableImagePallet class' category: 'Morphic-Misc1'!
PluggableImagePallet class
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

!classDefinition: #PickAColorPallet category: 'Morphic-Misc1'!
ImagePickerPanel subclass: #PickAColorPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PickAColorPallet class' category: 'Morphic-Misc1'!
PickAColorPallet class
	instanceVariableNames: ''!

!classDefinition: #PickAIconPallet category: 'Morphic-Misc1'!
ImagePickerPanel subclass: #PickAIconPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PickAIconPallet class' category: 'Morphic-Misc1'!
PickAIconPallet class
	instanceVariableNames: ''!

!classDefinition: #PickALargerIconPallet category: 'Morphic-Misc1'!
ImagePickerPanel subclass: #PickALargerIconPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'PickALargerIconPallet class' category: 'Morphic-Misc1'!
PickALargerIconPallet class
	instanceVariableNames: ''!

!classDefinition: #BorderedRectMorph category: 'Morphic-Misc1'!
BoxedMorph subclass: #BorderedRectMorph
	instanceVariableNames: 'borderStyle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Misc1'!
!classDefinition: 'BorderedRectMorph class' category: 'Morphic-Misc1'!
BorderedRectMorph class
	instanceVariableNames: ''!


!AddedCursors commentStamp: '<historical>' prior: 0!
Additional Cursors -- see class side

AddedCursors openHand activateCursor.
AddedCursors closedHand activateCursor.!

!PalletLayoutMorph commentStamp: '<historical>' prior: 0!
I am a LayoutMorph which allows grabbing (cloning) my submorphs.!

!BorderedImageMorph commentStamp: '<historical>' prior: 0!
I am an BoxedMorph with a borderStyle.

borderStyle may be #simple, #raised, or #inset!

!InnerPluggableImagePallet commentStamp: '<historical>' prior: 0!
I display pick/clone-able images in a PluggableImagePallet which is a PluggableScrollPane!

!MorphMessageBox commentStamp: '<historical>' prior: 0!
I am a Workspace specialized to send a message to a Morph.!

!DropTargetMorph commentStamp: '<historical>' prior: 0!
I am a transcient drop target for a morph.

I allow one to drop morphs which make changes to myMorph.
Each such morph has property DropActionMorph set to true.
!

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

!PickAColorPallet commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.!

!PickAIconPallet commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.!

!PickALargerIconPallet commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.!

!BorderedRectMorph commentStamp: '<historical>' prior: 0!
I am a BoxedMorph (rect) with a borderStyle.

borderStyle may be #simple, #raised, or #inset.!

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
	offset: -1 @ -1)
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
	offset: -1 @ -1)
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

!PalletLayoutMorph methodsFor: 'layout' stamp: 'KenD 11/7/2021 14:14:42'!
shrinkWrap
	"Resize self to minimally contain submorphs with specified separation"
	
	| width height sep |
	((self direction) = #horizontal) "(a row)"
		ifTrue:  [
			sep := self xSeparation.
			width := sep + 
				(self submorphs 
					inject: 0 
					into: [ :subTotal :m |  subTotal + (m morphExtentInOwner x) + sep ]).
			sep := 2 * self ySeparation.
			height := 
				(self submorphs 
					inject: 10 
					into: [ :maxHeight :m |  maxHeight max: (m morphExtentInOwner y) + sep ]).
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
					into: [ :maxWidth :m |  maxWidth max: (m morphExtentInOwner x) + sep ]).
			sep := self ySeparation.
			height := sep + 
				(self submorphs 
					inject: 0 
					into: [ :subTotal :m |  subTotal + (m morphExtentInOwner y) + sep ]).
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

!BorderedImageMorph methodsFor: 'accessing' stamp: 'KenD 4/16/2021 12:49:08'!
borderStyle

	^ borderStyle! !

!BorderedImageMorph methodsFor: 'accessing' stamp: 'KenD 4/16/2021 12:49:27'!
borderStyle: aSymbol

	( #(simple raised inset) includes: aSymbol )
		ifFalse: [ self error: 'Border Style must be one of #simple #raised or #inset; got: ', aSymbol printString ].
		
	borderStyle := aSymbol! !

!BorderedImageMorph methodsFor: 'drawing' stamp: 'KenD 11/7/2021 14:16:33'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."
	"If you redefine this method in a subclass, please take a look at the comment at #isOpaqueMorph"
	
	aCanvas  "My image is inset from the border."
	     image: image
		at: borderWidth @ borderWidth.

	aCanvas "The border is drawn around the image."
		frameRectangle: (`0@0`  extent: self morphExtentInOwner) 
		color: borderColor 
		borderWidth: borderWidth 
		borderStyleSymbol: borderStyle.
! !

!BorderedImageMorph methodsFor: 'initialization' stamp: 'KenD 9/12/2021 15:14:08'!
initialize
	"Set my defaults"

	super initialize.
	borderWidth := 4.
	borderColor := Color orange.
	borderStyle := #raised.
	self morphExtent: (2 * borderWidth +image extent).! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:42:54'!
adjustExtent
	
	"Nothing to do here"! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:37:56'!
getMenu

	^ nil! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:39:10'!
imageExtent
	"Answer extent of an image contained in me.
	Assume all images of same extent"
	^imageExtent ! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:38:18'!
imageExtent: aPointExtent

	imageExtent := aPointExtent ! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:39:16'!
imageHeight

	^ imageExtent y! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:39:21'!
imageWidth

	^ imageExtent x! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:37:45'!
minimumExtent

	^self calculatedExtent ! !

!InnerPluggableImagePallet methodsFor: 'accessing' stamp: 'KenD 9/15/2021 14:39:40'!
nameImageCollection

	^ nameImageCollection ! !

!InnerPluggableImagePallet methodsFor: 'initialization' stamp: 'KenD 11/7/2021 14:16:42'!
collection: aNameImageCollection filter: imageTransducer

	| numImages maxWidth numAcross numDown spacedExtent |
	nameImageCollection := aNameImageCollection.
	imageFilter := imageTransducer.
	
	numImages := aNameImageCollection size.
	numImages isZero 
		ifTrue: [Error signal: 'I require a non-empty collection to display!!'].
	numImages> 1000 
		ifTrue: [Error signal: 'Collection too large to display safely'].
	"@@FIXME: assumes all images same size@@"
	self imageExtent: 
		(self processImage: (aNameImageCollection anyOne value)) morphExtentInOwner.

	maxWidth := (DisplayScreen actualScreenSize x) // 1.2.
	spacedExtent := imageExtent + self spaceWidth.

	numAcross := (((maxWidth - self spaceWidth) // spacedExtent x) 
						max: 1) min: numImages.
	numDown := (numImages / numAcross) ceiling.
	((numDown < 3) and: [numAcross > 40])
		ifTrue: [ 
			numAcross := 40. 
			numDown := (numImages / numAcross) ceiling.
		].
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
	"Answer LayoutMorph with images"
	^ self layoutImages: numAcross extent: self calculatedExtent.



! !

!InnerPluggableImagePallet methodsFor: 'initialization' stamp: 'KenD 9/16/2021 13:18:54'!
initialize

	super initialize.
	imageFilter := [:any| any].
	^ self 
		layoutSpec: LayoutSpec useAll;
		yourself! !

!InnerPluggableImagePallet methodsFor: 'initialization' stamp: 'KenD 9/16/2021 13:11:57'!
layoutImages: numAcross extent: layoutExtent
	"Lay out images in a LayoutMorph and return it."
	
	| column nextRow count rowLayoutSpec |
	rowLayoutSpec := LayoutSpec 
							fixedWidth: layoutExtent x  
							fixedHeight: self imageHeight
							offAxisEdgeWeight: #columnLeft.
							
	column := LayoutMorph newColumn.
	column 
		separation:    self spaceWidth;
		morphExtent: self calculatedExtent;
		axisEdgeWeight: #columnTop.

	count := -1.
	self nameImageCollection do: [ :nameImageAssoc |
			| name image imageMorph |
		     name  := nameImageAssoc key.
			image := nameImageAssoc value.
			count := count + 1.  "Image count"
			(count \\ numAcross) isZero ifTrue: [ "Start a new Row"
				nextRow := PalletLayoutMorph newRow 
							separation: (self spaceWidth @ 0).
				nextRow layoutSpec: rowLayoutSpec.
				column addMorph: nextRow.
			].
			imageMorph := self processImage: image.
			imageMorph setBalloonText: name asString.
			nextRow addMorph: imageMorph.
	].
	"Don't spread out morphs in the last row"
	((nextRow submorphs size) > 0) ifTrue: [ nextRow shrinkWrap.].
	column 
		color: `Color orange`;
		addMorph: nextRow; "add last row"
		layoutSpec: (LayoutSpec
							fixedWidth: self imageWidth
							fixedHeight: layoutExtent y). 
	^ column
! !

!InnerPluggableImagePallet methodsFor: 'private' stamp: 'KenD 9/15/2021 14:37:02'!
calculatedExtent

	^ calculatedExtent! !

!InnerPluggableImagePallet methodsFor: 'private' stamp: 'KenD 9/15/2021 14:36:55'!
calculatedExtent: aPointExtent

	calculatedExtent := aPointExtent.
	self morphExtent: calculatedExtent ! !

!InnerPluggableImagePallet methodsFor: 'private' stamp: 'KenD 9/15/2021 14:37:10'!
processImage: anImage

	^ imageFilter value: anImage
! !

!InnerPluggableImagePallet methodsFor: 'private' stamp: 'KenD 9/15/2021 14:37:16'!
spaceWidth
	"Answer the space in pixels between images"
	
	^ 2! !

!InnerPluggableImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/16/2021 11:58:06'!
fromCollection: sortedColors imageFilter: colorTransducer

		^ self basicNew initialize 
			collection: sortedColors 
			filter: colorTransducer ! !

!PluggableImagePallet methodsFor: 'initialization' stamp: 'KenD 9/15/2021 08:31:54'!
innerMorphClass

	^ InnerPluggableImagePallet! !

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

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 11/7/2021 14:19:28'!
openFor: aMorph

	self targetMorph: aMorph.
	"Don't let Layout obfiscate view below"
	(self layoutMorph) color: (Color teal alpha: 0.3).

	"Nota Bene: must set my extent before asking about label"

	self 
		morphExtent: aMorph morphExtentInOwner + self boxExtent;
		setLabel: ('DropTarget: ', (aMorph printStringLimitedTo: 64));
		openInWorld; "Ignores settings; RESET them!!!!"
		morphPosition: aMorph morphPositionInWorld - self boxExtent ;
		morphExtent: aMorph morphExtentInOwner + self boxExtent;
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
		self inform: 'NOTE: ImageMorphs can''t be resized'
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

!PickAColorPallet class methodsFor: 'instance creation' stamp: 'KenD 12/7/2016 08:24:49'!
initializedInstance

	^ super namedColors! !

!PickAColorPallet class methodsFor: 'new-morph participation' stamp: 'KenD 12/7/2016 08:28:49'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!PickAIconPallet class methodsFor: 'instance creation' stamp: 'KenD 12/7/2016 08:27:02'!
initializedInstance

	^ super namedIcons ! !

!PickAIconPallet class methodsFor: 'new-morph participation' stamp: 'KenD 12/7/2016 08:29:03'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!PickALargerIconPallet class methodsFor: 'instance creation' stamp: 'KenD 12/7/2016 08:27:27'!
initializedInstance

	^ super largerIcons ! !

!PickALargerIconPallet class methodsFor: 'new-morph participation' stamp: 'KenD 12/7/2016 08:29:12'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!BorderedRectMorph methodsFor: 'accessing' stamp: 'KenD 4/29/2021 14:08:41'!
borderStyle

	^ borderStyle! !

!BorderedRectMorph methodsFor: 'accessing' stamp: 'KenD 5/6/2021 06:03:10'!
borderStyle: aSymbol

	( #(simple raised inset) includes: aSymbol )
		ifFalse: [ self error: 'Border Style must be one of #simple #raised or #inset; got: ', aSymbol printString ].
		
	borderStyle := aSymbol.
	self redrawNeeded! !

!BorderedRectMorph methodsFor: 'drawing' stamp: 'KenD 4/29/2021 14:13:08'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."
	"If you redefine this method in a subclass, please take a look at the comment at #isOpaqueMorph"
	
	aCanvas
		fillRectangle: self morphLocalBounds
		color: color
		borderWidth: borderWidth
		borderStyleSymbol: borderStyle
		baseColorForBorder: borderColor.

! !

!BorderedRectMorph methodsFor: 'initialization' stamp: 'KenD 4/29/2021 14:09:45'!
initialize
	"Set my defaults"

	super initialize.
	borderWidth := 4.
	borderColor := Color brown.
	borderStyle := #raised.! !

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

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 11/7/2021 14:13:03'!
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
			morphExtent: self morphExtentInOwner;
			morphPosition: self morphPositionInWorld;
			yourself.
		frame openInWorld.
		self submorphsDo: [ :m | m frameLayouts: colors depth: depth + 1 ].
	].! !

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 11/7/2021 14:13:12'!
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
			morphExtent: self morphExtentInOwner;
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

!Morph methodsFor: '*morphic-misc1' stamp: 'KenD 11/7/2021 13:49:54'!
targetMorph

	"Construction Morphs present affordances or facades for a targetMorph.
	 I just present myself."
	^ self! !

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
MorphicMisc1Package postPackageInstall!
