'From Cuis 6.0 [latest update: #5041] on 8 January 2022 at 2:05:47 pm'!
'Description Simple Morphs showing useful features or ideas.'!
!provides: 'Examples-Morphic' 1 1!
!requires: 'Cuis-Base' 60 5041 nil!
SystemOrganization addCategory: 'Examples-Morphic'!


!classDefinition: #MorphMessageBox category: 'Examples-Morphic'!
WorkspaceWindow subclass: #MorphMessageBox
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Examples-Morphic'!
!classDefinition: 'MorphMessageBox class' category: 'Examples-Morphic'!
MorphMessageBox class
	instanceVariableNames: ''!

!classDefinition: #DragAndDropAreaMorph category: 'Examples-Morphic'!
BoxedMorph subclass: #DragAndDropAreaMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Examples-Morphic'!
!classDefinition: 'DragAndDropAreaMorph class' category: 'Examples-Morphic'!
DragAndDropAreaMorph class
	instanceVariableNames: ''!

!classDefinition: #PartsBinMorph category: 'Examples-Morphic'!
DragAndDropAreaMorph subclass: #PartsBinMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Examples-Morphic'!
!classDefinition: 'PartsBinMorph class' category: 'Examples-Morphic'!
PartsBinMorph class
	instanceVariableNames: ''!

!classDefinition: #FrameRateMorph category: 'Examples-Morphic'!
BoxedMorph subclass: #FrameRateMorph
	instanceVariableNames: 'lastStepDelta meanStepDelta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Examples-Morphic'!
!classDefinition: 'FrameRateMorph class' category: 'Examples-Morphic'!
FrameRateMorph class
	instanceVariableNames: ''!

!classDefinition: #FunctionGraphMorph category: 'Examples-Morphic'!
BoxedMorph subclass: #FunctionGraphMorph
	instanceVariableNames: 'xMin xMax yMin yMax functions colors yRangeInvalid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Examples-Morphic'!
!classDefinition: 'FunctionGraphMorph class' category: 'Examples-Morphic'!
FunctionGraphMorph class
	instanceVariableNames: ''!

!classDefinition: #MagnifierMorph category: 'Examples-Morphic'!
BoxedMorph subclass: #MagnifierMorph
	instanceVariableNames: 'magnification trackPointer lastPos srcExtent auxCanvas magnifiedForm'
	classVariableNames: 'RecursionLock'
	poolDictionaries: ''
	category: 'Examples-Morphic'!
!classDefinition: 'MagnifierMorph class' category: 'Examples-Morphic'!
MagnifierMorph class
	instanceVariableNames: ''!


!MorphMessageBox commentStamp: '<historical>' prior: 0!
I am a Workspace specialized to send a message to a Morph.

E.g. DoIt on:

MorphMessageBox openForMorph: 
	(BoxedMorph initializedInstance openInWorld).

will open a BoxedMorph AND a Workspace sized for one 
line with the name of a BoxedMorph.  Something like 'boxedmorph1783017'.

You can then type some code, e.g. ' color: Color green.'
    boxedmorph1783017 color: Color green.
and DoIt to change the BoxedMorph instance's color.

You can resize the Workspace and invoke a bunch of code and know
that the BoxMorph instance is bound to the boxedmorph1783017 name.
Of course, you can do this in an Inspector execution pane which 
has the instance bound to 'self'.

See the #openForMorph: class method for the interesting bits.
!

!DragAndDropAreaMorph commentStamp: '<historical>' prior: 0!
A simple morph that allows dragging submorphs, and dropping other morphs on it. It is provided as an example, and also as a reference of the methods you might need to implement in your morphs to handle drag and drop.

If you make an instance of me, you can drag a morph over me and when dropped it will be one of my submorphs.  

You can also drag a sunborph out of me.

| m |
m _ DragAndDropAreaMorph new.
m openInWorld.
m addMorph: WidgetMorph new.
m morphExtent: 320@240!

!PartsBinMorph commentStamp: '<historical>' prior: 0!
I am like DragAndDropAreaMorph, but when submorphs are dragged, get a copy and not the original.

| m |
m _ PartsBinMorph new.
m openInWorld.
m addMorph: EllipseMorph new.
m morphExtent: 120@240!

!FrameRateMorph commentStamp: '<historical>' prior: 0!
A very simple morph to demo stepping, and for knowing about stepping (and world update) frame rates.

FrameRateMorph new openInHand!

!FunctionGraphMorph commentStamp: '<historical>' prior: 0!
For continuous functions on a real domain.

| g d |
d _ -1.
g _ FunctionGraphMorph new.
g domain: (-4 to: 4).
g addFunction: [ :x | x \\ d ] color: Color green.
g addFunction: [ :x | x // d ] color: Color red.
(g embeddedInMorphicWindowLabeled: 'graph') openInWorld

| g d |
d _ -1.
g _ FunctionGraphMorph new.
g domain: (-4 to: 4).
g addFunction: [ :x | x rem: d ] color: Color green.
g addFunction: [ :x | x quo: d ] color: Color red.
g openInWorld

| g d |
d _ -1.
g _ FunctionGraphMorph new.
g domain: (-4 to: 4).
g addFunction: [ :x | x mod: d ] color: Color green.
g addFunction: [ :x | x div: d ] color: Color red.
g openInWorld

| g |
g _ FunctionGraphMorph new.
g domain: (-30 to: 30 count: 2000).
g domain: (-30 to: 30).
g yRange: (-200 to: 200).
g addFunction: [ :x | ((3* x *x)) / (x+2) ] color: Color red.
g addFunction: [ :x | ((3* x *x*x) - (6*x*x)) / (x squared -4) ] color: Color green.
(g embeddedInMorphicWindowLabeled: 'graph') openInWorld.
!

!MagnifierMorph commentStamp: '<historical>' prior: 0!
Provides a magnifying glass. Magnifies the morphs below (if grabbed) or the area around the mouse pointer.

I show how to add custom menu items.  
See #addCustomMenuItems: hand:!

!FunctionGraphMorph class methodsFor: 'instance creation' stamp: 'KenD 1/8/2022 13:59:59'!
initializedInstance
	"
	self  initializedInstance openInWorld
	"
	| g |
	g _ FunctionGraphMorph new.
	g domain: (-4 to: 4).
	g addFunction: [ :x | x cos ] color: Color green.
	g addFunction: [ :x | (x + 1) squared - 3 ] color: Color red. "parabola with vertex at (-1,-3)"
	^ g! !

!MorphMessageBox methodsFor: 'geometry' stamp: 'KenD 9/30/2016 17:06:54'!
minimumExtent

	^ 700@(self boxExtent y * 2.3)! !

!MorphMessageBox methodsFor: 'initialization' stamp: 'KenD 9/30/2016 15:28:45'!
initialize

	super initialize.
	self morphExtent: self minimumExtent.! !

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

!MorphMessageBox class methodsFor: 'new-morph participation' stamp: 'KenD 1/8/2022 13:29:30'!
includeInNewMorphMenu
	"I don't have an initialized instance"
	^false! !

!DragAndDropAreaMorph methodsFor: 'drag and drop other morphs' stamp: 'jmv 1/24/2013 22:52'!
allowsMorphDrop
	"Answer whether we accept dropping morphs. Redefined to answer true."

	^ true! !

!DragAndDropAreaMorph methodsFor: 'drag and drop other morphs' stamp: 'jmv 1/24/2013 22:52'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. Redefined to answer true."

	^ true! !

!DragAndDropAreaMorph methodsFor: 'drag and drop other morphs' stamp: 'jmv 1/24/2013 22:52'!
wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, which is being dropped by a hand in response to the given event. Note that for a successful drop operation both parties need to agree. The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self.
	This method just answers super. It is included here to say it is relevant to D&D behavior."

	^super wantsDroppedMorph: aMorph event: evt! !

!DragAndDropAreaMorph methodsFor: 'drag and drop us' stamp: 'jmv 1/24/2013 22:53'!
aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^self "Grab me"! !

!DragAndDropAreaMorph methodsFor: 'drag and drop us' stamp: 'jmv 1/24/2013 22:53'!
justDroppedInto: newOwnerMorph event: anEvent 
	"This message is sent to a dropped morph after it has been dropped on -- and been accepted by -- a drop-sensitive morph"
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^super justDroppedInto: newOwnerMorph event: anEvent ! !

!DragAndDropAreaMorph methodsFor: 'drag and drop us' stamp: 'jmv 1/24/2013 22:53'!
justGrabbedFrom: formerOwner
	"The receiver was just grabbed from its former owner and is now attached to the hand."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."! !

!DragAndDropAreaMorph methodsFor: 'drag and drop us' stamp: 'jmv 1/24/2013 22:53'!
wantsToBeDroppedInto: aMorph
	"Return true if it's okay to drop the receiver into aMorph. This check is symmetric to #wantsDroppedMorph:event: to give both parties a chance of figuring out whether they like each other."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^true! !

!PartsBinMorph methodsFor: 'dropping/grabbing' stamp: 'jmv 2/22/2013 12:49'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^aMorph copy! !

!FrameRateMorph methodsFor: 'drawing' stamp: 'KenD 1/8/2022 13:55:02'!
drawOn: aCanvas
	super drawOn: aCanvas.
	meanStepDelta ifNotNil: [
		aCanvas drawString: lastStepDelta rounded printString at: 14@2  font: FontFamily defaultFamilyAndPointSize color: Color black.
		aCanvas drawString: meanStepDelta rounded printString at: 14@15 font: FontFamily defaultFamilyAndPointSize color: Color black.
		"aCanvas drawString: lastStepStamp printString at: bounds topLeft + (0@28) font: FontFamily defaultFamilyAndPointSize color: Color black "
		]! !

!FrameRateMorph methodsFor: 'stepping' stamp: 'jmv 2/27/2016 19:52'!
stepAt: millisecondSinceLast

	| n |
	lastStepDelta _ millisecondSinceLast.
	"This factor is a damper, to show a sort of mean of the n latest step deltas"
	meanStepDelta
		ifNil: [ meanStepDelta _ 0. n _ 0 ]
		ifNotNil: [
"			n _ (meanStepDelta / lastStepDelta between: 0.5 and: 2)
				ifTrue: [ 10 ]
				ifFalse: [10 ]."
			n _ 20 ].
	meanStepDelta _ meanStepDelta * n + lastStepDelta / (n+1).
	self redrawNeeded! !

!FrameRateMorph methodsFor: 'stepping' stamp: 'jmv 6/11/2012 23:34'!
stepTime

	^20! !

!FrameRateMorph methodsFor: 'stepping' stamp: 'jmv 6/11/2012 09:20'!
wantsSteps
	"Return true if the receiver wants to its #step or #stepAt: methods be run"

	^true! !

!FunctionGraphMorph methodsFor: 'accessing' stamp: 'jmv 11/18/2014 08:52'!
addFunction: aOneArgBlock color: aColor

	functions add: aOneArgBlock.
	colors add: aColor! !

!FunctionGraphMorph methodsFor: 'accessing' stamp: 'jmv 3/9/2018 16:06:11'!
domain: anInterval

	xMin _ anInterval first asFloat.
	xMax _ anInterval last asFloat.

	yMin _ nil.
	yMax _ nil.! !

!FunctionGraphMorph methodsFor: 'accessing' stamp: 'jmv 4/21/2020 20:44:35'!
yRange: anInterval

	yMin _ anInterval first asFloat.
	yMax _ anInterval last asFloat.
	yRangeInvalid := false.! !

!FunctionGraphMorph methodsFor: 'drawing' stamp: 'jmv 6/11/2020 16:49:39'!
drawOn: aCanvas
	"
	| g |
	g _ FunctionGraphMorph new.
	g domain: (-4 to: 4).
	g addFunction: [ :x | x mod: 1 ] color: Color green.
	g addFunction: [ :x | x div: 1 ] color: Color red.
	g openInWorld
	"
	| r fontToUse xtra p prevP |
	yRangeInvalid ifTrue: [
		yMin _ Float infinity.
		yMax _ Float negativeInfinity.
		self iterate: [ :x :y :c |
			y notNil ifTrue: [
				yMin _ yMin min: y.
				yMax _ yMax max: y ]].
		yMax = yMin ifTrue: [
			yMin _ yMin min: 0.
			yMax _ yMax max: 0 ].
		xtra _ yMax-yMin/50.
		yMin _ yMin - xtra.
		yMax _ yMax + xtra.
		yRangeInvalid := false.
		].
			
	r _ 40@0 corner: extent - (0@20).
	aCanvas
		frameAndFillRectangle: r fillColor: (Color gray: 0.9)
		borderWidth: 0.05 borderColor: Color white.
	(0 between: xMin and: xMax) ifTrue: [
		aCanvas line: (self toMorphic:0@yMin)-(0@2) to: (self toMorphic: 0 @ yMax)+(0@2) width: 2 color: Color darkGray ].
	(0 between: yMin and: yMax) ifTrue: [
		aCanvas line: (self toMorphic: xMin@0)+(2@0) to: (self toMorphic: xMax@0)-(2@0) width: 2 color: Color darkGray ].

	"To plot lines"
	functions with: colors do: [ :f :c |
		prevP _ nil.
		xMin asFloat to: xMax count: extent x do: [ :x | | y |
			y _ [ f value: x ] on: Error do: [].
			(y notNil and: [
					p _ (self xToMorphic: x)@(self yToMorphic: y).
					(r containsPoint: p) ])
				ifFalse: [
					prevP _ nil]
				ifTrue: [
					prevP notNil ifTrue: [
						aCanvas line: prevP to: p width: 2 color: c ].
					prevP _ p ]]].

	"To plot just the points"
	"self iterate: [ :x :y :c |
		(y between: yMin and: yMax) ifTrue: [
			r2 _ (self xToMorphic: x)@(self yToMorphic: y) extent: 2.5.
			(r containsRect: r2) ifTrue: [
				aCanvas
					fillRectangle: r2
					color: c ]]]."

	fontToUse _ FontFamily defaultFamilyAndPointSize.
	aCanvas drawString: xMin printString at: 40@(extent y - 16) font: fontToUse color: Color black.
	aCanvas drawString: xMax printString at: extent -(32@16) font: fontToUse color: Color black.
	aCanvas drawString: yMin printString at: 4@(extent y - 32) font: fontToUse color: Color black.
	aCanvas drawString: yMax printString at: 4@4 font: fontToUse color: Color black.! !

!FunctionGraphMorph methodsFor: 'drawing' stamp: 'jmv 4/21/2020 20:25:25'!
iterate: aBlock

	| y |
	functions with: colors do: [ :f :c |
		xMin asFloat to: xMax count: extent x do: [ :x |
			y _ [ f value: x ] on: Error do: [].
			aBlock value: x value: y asFloat value: c ]]! !

!FunctionGraphMorph methodsFor: 'initialization' stamp: 'pb 5/27/2019 18:19:57'!
initialize
	super initialize.
	extent _ 320@240.
	functions _ OrderedCollection new.
	colors _ OrderedCollection new.
	yRangeInvalid := true! !

!FunctionGraphMorph methodsFor: 'initialization' stamp: 'pb 5/27/2019 18:19:17'!
invalidateYRange
	yRangeInvalid := true! !

!FunctionGraphMorph methodsFor: 'geometry' stamp: 'jmv 5/17/2015 09:20'!
toMorphic: aPoint
	^(self xToMorphic: aPoint x) @ (self yToMorphic: aPoint y)! !

!FunctionGraphMorph methodsFor: 'geometry' stamp: 'jmv 11/25/2016 11:03:22'!
xToMorphic: x
	^x - xMin / (xMax - xMin ) * (extent x-40)+40! !

!FunctionGraphMorph methodsFor: 'geometry' stamp: 'jmv 11/25/2016 11:03:27'!
yToMorphic: y
	^yMax - y / (yMax - yMin ) * (extent y-20)! !

!MagnifierMorph methodsFor: 'menu' stamp: 'di 9/28/1999 23:06'!
addCustomMenuItems: aCustomMenu hand: aHandMorph
	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu
		addLine;
		add: 'magnification...' action: #chooseMagnification;
		addUpdating: #trackingPointerString action: #toggleTrackingPointer;
		addUpdating: #toggleRoundString action: #toggleRoundness.! !

!MagnifierMorph methodsFor: 'menu' stamp: 'jmv 8/21/2012 21:53'!
chooseMagnification
	| result |
	result _ (SelectionMenu selections: #(1.5 2 4 8))
		startUpWithCaption: 'Choose magnification
(currently ', magnification printString, ')'.
	(result == nil or: [ result = magnification ]) ifTrue: [ ^ self ].
	magnification _ result.
	self morphExtent: extent. "round to new magnification"
	self redrawNeeded. "redraw even if extent wasn't changed"! !

!MagnifierMorph methodsFor: 'menu' stamp: 'jmv 9/22/2012 15:35'!
chooseMagnification: evt
	| handle origin aHand currentMag |
	currentMag _ magnification.
	aHand _ evt ifNil: [ self world activeHand ] ifNotNil: [evt hand].
	origin _ aHand morphPosition y.
	handle _ HandleMorph new forEachPointDo:
		[ :newPoint | self magnification: (newPoint y - origin) / 8.0 + currentMag ].
	aHand attachMorph: handle.
	handle startStepping.
	self redrawNeeded. ! !

!MagnifierMorph methodsFor: 'menu' stamp: 'bf 9/20/1999 15:48'!
toggleTrackingPointer
	trackPointer _ trackPointer not! !

!MagnifierMorph methodsFor: 'menu' stamp: 'bf 9/20/1999 15:49'!
trackingPointerString
	^trackPointer
		ifTrue: ['stop tracking pointer']
		ifFalse: ['start tracking pointer']! !

!MagnifierMorph methodsFor: 'geometry' stamp: 'jmv 8/28/2021 19:34:31'!
borderWidth: anInteger
	"Grow outwards preserving innerBounds"

	super borderWidth: anInteger.
	self morphExtent: self defaultExtent.! !

!MagnifierMorph methodsFor: 'geometry' stamp: 'bf 9/21/1999 09:22'!
defaultExtent
	^(srcExtent * magnification) truncated + (2 * borderWidth)! !

!MagnifierMorph methodsFor: 'geometry' stamp: 'jmv 6/6/2014 18:06'!
privateExtent: aPoint
	"Round to multiples of magnification"

	srcExtent _ (aPoint - (2 * borderWidth)) // magnification.
	^ super privateExtent: self defaultExtent! !

!MagnifierMorph methodsFor: 'initialization' stamp: 'jmv 12/2/2011 10:20'!
defaultBorderWidth
	"answer the default border width for the receiver"
	^ 1! !

!MagnifierMorph methodsFor: 'initialization' stamp: 'KenD 1/8/2022 13:48:30'!
initialize
	super initialize.
	trackPointer _ true.
	magnification _ 2.
	self
		color: Color transparent;
		morphExtent: 128@128! !

!MagnifierMorph methodsFor: 'drawing' stamp: 'jmv 10/15/2020 15:44:41'!
drawOn: aCanvas
	RecursionLock == self ifFalse: [
		super drawOn: aCanvas.		"border and fill"
		self magnifiedForm ifNotNil: [ :f |
			aCanvas image: f at: borderWidth@borderWidth ]]! !

!MagnifierMorph methodsFor: 'event handling testing' stamp: 'jmv 1/17/2013 17:27'!
handlesMouseDown: aMouseButtonEvent

	^aMouseButtonEvent mouseButton2Pressed! !

!MagnifierMorph methodsFor: 'round view' stamp: 'jmv 12/10/2010 09:25'!
isRound

	^ "owner isMemberOf: ScreeningMorph" false! !

!MagnifierMorph methodsFor: 'round view' stamp: 'di 9/28/1999 23:17'!
toggleRoundString
	^ self isRound
		ifTrue: ['be square']
		ifFalse: ['be round']! !

!MagnifierMorph methodsFor: 'round view' stamp: 'jmv 12/11/2011 23:35'!
toggleRoundness
	| |
"	w _ self world.
	self isRound
		ifTrue: [owner delete.
				w addMorph: self]
		ifFalse: [sm _ ScreeningMorph new position: self zzposition.
				sm addMorph: self.
				sm addMorph: (EllipseMorph newBounds: self bounds).
				w addMorph: sm]
			"! !

!MagnifierMorph methodsFor: 'magnifying' stamp: 'jmv 8/28/2021 19:34:57'!
magnification: aNumber

	magnification _ aNumber min: 8 max: 0.5.
	magnification _ magnification roundTo:
		(magnification < 3 ifTrue: [0.5] ifFalse: [1]).
	srcExtent _ srcExtent min: (512@512) // magnification. "to prevent accidents"
	self morphExtent: self defaultExtent.! !

!MagnifierMorph methodsFor: 'magnifying' stamp: 'jmv 8/26/2021 17:39:10'!
magnifiedForm
	| srcRect form neededExtent |
	self displayBounds ifNil: [ ^nil ].
	lastPos _ self sourcePoint.
	srcRect _ self sourceRectFrom: lastPos.
	((srcRect intersects: self displayBounds) and: [ RecursionLock == nil ])
		ifTrue: [
			RecursionLock _ self.
			"try to reuse form if appropriate"
			auxCanvas _ (auxCanvas notNil and: [ auxCanvas extent = srcExtent ])
				ifTrue: [
					"Just in case we go out of the Display"
					srcRect origin > (0@0) ifFalse: [
						auxCanvas form fillBlack ].
					BitBltCanvas onForm: auxCanvas form over: srcRect ]
				ifFalse: [ BitBltCanvas depth: 32 over: srcRect ].
			auxCanvas fullDraw: self world.
			form _ auxCanvas form.
			RecursionLock _ nil]
		ifFalse: [
			"cheaper method if the source is not occluded"
			form _ Display copy: srcRect].
	"smooth if non-integer scale"
	neededExtent _ (srcExtent * magnification ) truncated.
	(magnifiedForm isNil or: [ magnifiedForm extent ~=  neededExtent ])
		ifTrue: [ magnifiedForm _ Form extent: neededExtent depth: 32 ].
	(WarpBlt toForm: magnifiedForm)
		sourceForm: form;
		colorMap: (form colormapIfNeededFor: magnifiedForm);
		cellSize: (magnification isInteger ifTrue: [1] ifFalse: [2]);  "installs a new colormap if cellSize > 1"
		combinationRule: 3;
		copyQuad: form boundingBox innerCorners toRect: magnifiedForm boundingBox.
	^magnifiedForm.! !

!MagnifierMorph methodsFor: 'magnifying' stamp: 'jmv 10/15/2020 15:40:20'!
sourcePoint
	"If we are being dragged use our center, otherwise use pointer position"
	(trackPointer not or: [owner notNil and: [owner is: #HandMorph]])
		ifTrue: [ self displayBounds ifNotNil: [ :r | ^r center ]].
	^self world activeHand morphPosition! !

!MagnifierMorph methodsFor: 'magnifying' stamp: 'jmv 8/4/2012 16:41'!
sourceRect
	"world global coordinates, etc"
	self flag: #jmvVer2.
	^self sourceRectFrom: self sourcePoint! !

!MagnifierMorph methodsFor: 'magnifying' stamp: 'jmv 8/17/2012 18:52'!
sourceRectFrom: aPoint
	^ (aPoint extent: srcExtent) translatedBy: (srcExtent // -2) + 1.
! !

!MagnifierMorph methodsFor: 'events' stamp: 'jmv 1/14/2013 22:45'!
mouseButton2Down: aMouseButtonEvent localPosition: localEventPosition

	self chooseMagnification: aMouseButtonEvent! !

!MagnifierMorph methodsFor: 'stepping' stamp: 'jmv 2/27/2016 19:53'!
stepAt: millisecondSinceLast

	self redrawNeeded! !

!MagnifierMorph methodsFor: 'stepping' stamp: 'jmv 6/11/2012 23:32'!
stepTime
	"Update very often. Very short steptimes should only be used for morphs that are not stepping all the time!!"
	^ 20! !

!MagnifierMorph methodsFor: 'stepping' stamp: 'jmv 6/11/2012 09:58'!
wantsSteps
	"Return true if the receiver wants to its #step or #stepAt: methods be run ALL THE TIME.
	Morphs that send #startStepping and #stopStepping at appropriate times (i.e. when they are already in the world!!) don't need to answer true to this message"

	^true! !

!Morph methodsFor: '*examples-morphic' stamp: 'KenD 1/8/2022 08:34:50'!
boxExtent
	"answer the extent to use in all the buttons. 
	 
	the label height is used to be proportional to the fonts preferences"
	| e |
	e _ Preferences windowTitleFont lineSpacing.
	^e@e! !

!Morph methodsFor: '*examples-morphic' stamp: 'KenD 1/8/2022 08:34:24'!
messageWindow

	^ MorphMessageBox openForMorph: self! !

!Morph methodsFor: '*examples-morphic' stamp: 'KenD 1/8/2022 08:33:22'!
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
