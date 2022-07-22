'From Cuis 6.0 [latest update: #5392] on 22 July 2022 at 1:43:42 pm'!
'Description Various Morphs for study and playtime'!
!provides: 'Examples-Morphic' 1 4!
!requires: 'Cuis-Base' 60 5392 nil!
!requires: 'Graphics-Files-Additional' 1 24 nil!
SystemOrganization addCategory: 'Examples-Morphic'!


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

!classDefinition: #Animator category: 'Examples-Morphic'!
Object subclass: #Animator
	instanceVariableNames: 'actor action stepTime doneProc stepping'
	classVariableNames: 'Animators ButterflyForms'
	poolDictionaries: ''
	category: 'Examples-Morphic'!
!classDefinition: 'Animator class' category: 'Examples-Morphic'!
Animator class
	instanceVariableNames: ''!


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

!Animator commentStamp: '<historical>' prior: 0!
My instances animate individual Morphs without subclassing via stepping.
This means animations are asynchronous/non-blocking.

actor -- the morph acted upon
action -- a one argument closure which gets the actor morph as an argument
stepTime -- the step time increment
doneProc -- a one arg closure which answers false if animation is to continue

Animator class>>initialize  shows how to read a *.png file into an image.

-- see examples in class siide
e.g.
	Animator imageCyclingExample.


Note: Blue Butterfly used in 'Animator class>>imageCyclingExample' 
is a scale reduced image set originally derived from one by Dontmind8.com
with a Creative Commons 4 licence file (reproduced below)

-------------------
-------------------
IMPORTANT NOTICE: This license only applies if you downloaded this content as
a free user. 

---------------------

You must attribute the digital products to Dontmind8.com:

In order to use a content or a part of it, you must attribute it to Dontmind8.com,
so we will be able to continue creating new digital resources every day.


How to attribute it?

For websites:

Please, copy this code on your website to accredit the author:
<a href="http://www.Dontmind8.com">From Dontmind8</a>

For printing:

Paste this text on the final work so the authorship is known.
- For example, in the acknowledgements chapter of a book:
"From Dontmind8.com"


You are free to use this digital product:

- For both personal and commercial projects and to modify it.
- In a website or presentation template or application or as part of your design.

You are not allowed to:

- Sub-license, resell or rent it.
- Include it in any online or offline archive or database.

The terms of the license are described in https://creativecommons.org/licenses/by/4.0/


The terms described in the above link have precedence over the terms described
in the present document. In case of disagreement, the Creative Commons Attribution 4.0 Terms of Use will prevail.
-------------------!

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

!MagnifierMorph methodsFor: 'event handling testing' stamp: 'jmv 1/17/2013 17:27'!
handlesMouseDown: aMouseButtonEvent

	^aMouseButtonEvent mouseButton2Pressed! !

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

!MagnifierMorph methodsFor: 'events' stamp: 'jmv 1/14/2013 22:45'!
mouseButton2Down: aMouseButtonEvent localPosition: localEventPosition

	self chooseMagnification: aMouseButtonEvent! !

!Animator methodsFor: 'accessing' stamp: 'KenD 5/10/2021 11:39:56'!
action

	"Add a guard for un-owned Morphs"
	^ [ :aMorph | aMorph ifNotNil: [ aMorph owner ifNotNil: [action value: aMorph]]]! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:53'!
action: aOneArgClosure

	action := aOneArgClosure! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:51'!
actor

	^ actor! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:52'!
actor: aMorph

	actor := aMorph! !

!Animator methodsFor: 'accessing' stamp: 'KenD 2/27/2015 14:45'!
doneProc

	^doneProc! !

!Animator methodsFor: 'accessing' stamp: 'KenD 2/27/2015 14:45'!
doneProc: aOneArgClosure

	doneProc := aOneArgClosure! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:53'!
stepTime

	^ stepTime! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:54'!
stepTime: millisecondsToNextStep

	stepTime := millisecondsToNextStep! !

!Animator methodsFor: 'accessing' stamp: 'KenD 8/20/2015 17:18'!
world
	"I am not directly associated with any particular world"
	
	^ nil ! !

!Animator methodsFor: 'stepping' stamp: 'jmv 5/14/2015 17:32'!
isStepping
	stepping  ifNil: [stepping _ false ].
	^stepping ! !

!Animator methodsFor: 'stepping' stamp: 'KenD 9/20/2013 05:27'!
shouldGetStepsFrom: aWorld

	^ true! !

!Animator methodsFor: 'stepping' stamp: 'jmv 5/14/2015 17:32'!
startStepping
	"Start stepping the receiver"
	
	| w |
	w _ self runningWorld.
	w ifNotNil: [
		  w startStepping: self 
		   	at: Time localMillisecondClock 
			selector: #step 
			stepTime: self stepTime.
		stepping _ true].
		! !

!Animator methodsFor: 'stepping' stamp: 'KenD 2/27/2015 14:50'!
step

	self action value: self actor.
	(self doneProc value: self actor)
		ifTrue: [self stopStepping].! !

!Animator methodsFor: 'stepping' stamp: 'jmv 5/14/2015 17:31'!
stopStepping
	"Stop getting sent the 'step' message."

	| w |
	w _ self runningWorld.
	w ifNotNil: [w stopSteppingMorph: self].
	stepping _ false! !

!Animator methodsFor: 'initialize-release' stamp: 'KenD 5/6/2019 10:35:17'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps

	self actor: aMorph;
	      action: aOneArgClosure;
	      stepTime: milllisecondsBetweenSteps;
		 doneProc: [ :iaMorph | false ].  "never done -> loops continuously"
	aMorph setProperty: #animator toValue: self.
	^self
! !

!Animator methodsFor: 'initialize-release' stamp: 'KenD 5/6/2019 14:58:28'!
actor: aMorph action: oneArgClosure stepTime: milllisecondsBetweenSteps doneProc: predicateClosure

	self actor: aMorph;
	      action: oneArgClosure;
	      stepTime: milllisecondsBetweenSteps;
		 doneProc: predicateClosure.
	aMorph setProperty: #animator toValue: self.
	^self
	! !

!Animator class methodsFor: 'doneTestProc' stamp: 'KenD 2/27/2015 15:24'!
alwaysFalse
	"Answer a closure which takes a morph and always answers false.
	 Used for continuous loop animations."
	
	^ [ :aMorph | false ]! !

!Animator class methodsFor: 'doneTestProc' stamp: 'KenD 5/13/2015 12:21'!
doneAfterNTimes: anInteger
	"Answers a closure which reduces a counter by 1 each time called.
	The closure answers false if counter > 0"

	| counter count |
	count := anInteger. "remember for later"
	counter := count.
	^ [ :aMorph | 
		counter := counter - 1.
		(counter <= 0) "true when count exhausted"
		ifTrue: [ counter := count. true ] "enable reuse"
		ifFalse: [ false ]
	  ]! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/13/2015 14:08'!
blinkingExample    "Blinking"
"
	self blinkingExample.
	
	Animator stopStepping.
"
	| morph animator |
	morph := ImageMorph initializedInstance openInWorld.
	morph morphPosition: 200 @ 100.
	animator := Animator actor: morph 
						 action: self blinkAction.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 1/8/2022 14:40:04'!
bouncingBallExample    "Bounces off walls of container"
"
	self bouncingBallExample.
	
	Animator stopStepping.
"
	
	| morphClass morph animator |
	morphClass := (Smalltalk at: #EllipseMorph ifAbsent: [BoxedMorph]).
	morph := morphClass initializedInstance openInWorld.
	animator := Animator
						 actor: morph 
						 action: (Animator simpleMoveBounceAction: 20@30 )
						 stepTime: 60.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 1/8/2022 14:41:51'!
colorCyclingExample  "Color Cycling"
"
	self colorCyclingExample.  
"
	| morph colors animator |
	morph := BoxedMorph initializedInstance.
	morph borderWidth: 6;
		      morphPosition: 100@200.
	colors := { Color green. Color red. Color blue. Color yellow.  }.
	animator :=  
		Animator actor: morph 
					   action: (Animator cycleColors: colors 
											  forSelector: #borderColor:)
					   stepTime: 300.
	morph openInWorld.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 1/8/2022 14:49:11'!
composedActionExample  "Compose actions:  grow&shring + path"
"
	self composedActionExample.  
	
	Animator stopStepping.
"
	| morph actions animator |
	morph := BoxedMorph initializedInstance.
	morph morphPosition: 120@120;
	 		 openInWorld.
	actions := { 
	    self growShrinkAction: 20 numSteps: 6.
	    self followPathAction: 
			{ 120@120. 140@126. 180@130. 
			   190@140. 190@180. 170@200.  140@190.  130@160. 134@140. } .
			}.
	animator := self actor: morph 
			  			 action: [ : someMorph | actions do: [ :action | action value: someMorph ] ]
						stepTime: 200.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 1/8/2022 14:42:13'!
composedActionExample1  "Compose actions:  grow&shring + path"
"
	self composedActionExample1.  
	
	Animator stopStepping.
"
	| morph actions animator |
	morph := BoxedMorph initializedInstance.
	morph morphPosition: 120@120;
	 		 openInWorld.
	actions := { 
	    self growShrinkAction: 20 numSteps: 6.
	    self followPathAction: 
			{ 120@120. 140@126. 180@130. 
			   190@140. 190@180. 170@200.  140@190.  130@160. 134@140. } .
			}.
	animator := self actor: morph 
			  			 action: [ : someMorph | actions do: [ :action | action value: someMorph ] ]
						stepTime: 200.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 1/8/2022 14:24:09'!
growAndShrinkExample    "Grow &Shrink"
"
	self growAndShrinkExample.
	
	Animator stopStepping.
"
	| morph animator |
	morph := BoxedMorph initializedInstance openInWorld.
	morph morphPosition: 200 @ 100.
	animator := Animator
				actor: morph 
				action: (Animator 
						growShrinkAction: 20 
						numSteps: 6)
				stepTime: 100.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/5/2019 13:50:10'!
imageCyclingExample
	"Blue Butterfly"
"
	Animator imageCyclingExample.
	
	Animator stopStepping.
"
	| morph animator |
	morph := (ImageMorph new image: (ButterflyForms at: 1)) openInWorld.
	morph morphPosition: 200 @ 100.
	animator := Animator
						 actor: morph 
						 action: (Animator cycleImagesFrom: ButterflyForms)
						 stepTime: 100.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/5/2019 22:02:04'!
moveMorphExample
	"Nota Bene: Asynchronous"
"
	Animator moveMorphExample.
"
	Animator 
		slide: (ImageMorph initializedInstance openInWorld) 
		from: (10@10) "Origin initially at 0@0"
		to: (200@400)
		nSteps: 10
		delay: 20. "milliseconds"! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/12/2015 15:29'!
pathExample    "Follow a path, once"
"
	self pathExample.
	
"
	
	| morph pathPoints animator |
	morph := ImageMorph initializedInstance openInWorld.
	pathPoints := { 20@20. 40@26. 80@30. 90@40. 90@80. 
						70@100.  40@90.  30@60. 34@40. }.
	animator := self actor: morph 
						 action: (self followPathAction: pathPoints)
						 stepTime: 100
						 doneProc: (Animator doneAfterNTimes: (pathPoints size)).
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 2/26/2015 14:55'!
pathLoopExample    "Follow a path, repeatedly"
"
	self pathLoopExample.
	
	Animator stopStepping.
"
	
	| morph animator |
	morph := ImageMorph initializedInstance openInWorld.
	animator := self actor: morph 
						 action: (self followPathAction: 
			{ 20@20. 40@26. 80@30. 90@40. 90@80. 70@100.  40@90.  30@60. 34@40. } )
						 stepTime: 100.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:05'!
blinkAction
	"Answers a closure which takes a morph and makes it blink
	 by hiding ans showing it."
	
	| toggle |
	toggle := true.
	^ [ :aMorph | 
			toggle := toggle not.
			toggle ifTrue:  [ aMorph hide]
					ifFalse: [ aMorph show ]
	  ]! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:04'!
cycleColors: aColorCollection forSelector: collorSetter
	"Answers a closure which takes a morph and cycles the
	 morph's Color through aColorCollection"
	
	| colorIndex |
	colorIndex := 0.
	^ [ :aMorph | 
			colorIndex := colorIndex + 1.
			colorIndex > aColorCollection size ifTrue:  [ colorIndex := 1 ].
			aMorph perform: collorSetter with: (aColorCollection at: colorIndex).
			aMorph redrawNeeded.
	  ]! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 5/5/2019 13:43:55'!
cycleImagesFrom: aFormsArray
	"Answers a closure which takes an ImageMorph and sets its form, circularly"
	
	| pathIndex |
	pathIndex := 0.
	^ [ :aMorph | 
			pathIndex := pathIndex + 1.
			pathIndex > aFormsArray size ifTrue:  [ pathIndex := 1 ].
			aMorph image: (aFormsArray at: pathIndex).
			aMorph redrawNeeded.
	  ]! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:01'!
followPathAction: aPointCollection
	"Answers a closure which takes a morph and sets its morphPosition
	to each point in aPointCollection, circularly"
	
	| pathIndex |
	pathIndex := 0.
	^ [ :aMorph | 
			pathIndex := pathIndex + 1.
			pathIndex > aPointCollection size ifTrue:  [ pathIndex := 1 ].
			aMorph morphPosition: (aPointCollection at: pathIndex).
			aMorph redrawNeeded.
	  ]! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:03'!
growShrinkAction: growSizeinPixels numSteps: numSteps
	"Answers a closure which takes a morph and sets its morphExtent 
	 to grow then shrink in numSteps, keeping the morph centered on
	 its original morphPosition."
	
	| count isGrowing delta  |
	count := 0.
	isGrowing := true.
	growSizeinPixels even  "Want even number of pixels for centering"
		ifTrue: [ delta := growSizeinPixels ]
		ifFalse: [ delta := growSizeinPixels + 1 ].
	^ [ :aMorph | 
			isGrowing ifTrue:  [
				count := count + 1.
				aMorph morphExtent: aMorph morphExtent + delta.
				aMorph morphPosition: aMorph morphPosition - (delta / 2). "recenter"
				count >= numSteps ifTrue: [ isGrowing := false ].
			]
			ifFalse: [
				count := count - 1.
				aMorph morphExtent: aMorph morphExtent - delta.
				aMorph morphPosition: aMorph morphPosition + (delta / 2). "recenter"
				count < 1 ifTrue: [ isGrowing := true ].
			]
	  ]! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 9/20/2013 15:26'!
simpleMoveBounceAction: aPoint
	"Move around and vector off container edges"
	
	| ownerExtent deltaPoint |
	deltaPoint := aPoint.
	
	^ [ :aMorph |
		aMorph morphPosition: aMorph morphPosition + deltaPoint.
		ownerExtent := aMorph owner morphExtent.
		(aMorph morphPosition x <= 0) "Hit left wall"
			ifTrue: [ 
				aMorph morphPosition: 0 @ (aMorph morphPosition y). 
				deltaPoint := deltaPoint x negated @ deltaPoint y 
		].
		(aMorph morphPosition y <= 0) "Hit top wall"
			ifTrue: [ 
				aMorph morphPosition: (aMorph morphPosition x) @ 0. 
				deltaPoint := deltaPoint x  @  deltaPoint y negated.
		].
		((aMorph morphPosition x + aMorph morphExtent x) >= ownerExtent x) "Hit right wall"
			ifTrue: [ 
				aMorph morphPosition: (ownerExtent x - aMorph morphExtent x) 
										@ (aMorph morphPosition y). 
				deltaPoint := deltaPoint x negated @ deltaPoint y 
		].
		((aMorph morphPosition y + aMorph morphExtent y) >= ownerExtent y) "Hit bottom wall"
			ifTrue: [ 
				aMorph morphPosition: (aMorph morphPosition x) 
										@ (ownerExtent y - aMorph  morphExtent y). 
				deltaPoint := deltaPoint x  @ deltaPoint y negated.
		].
	]
! !

!Animator class methodsFor: 'moveMorph' stamp: 'KenD 2/27/2015 20:02'!
slide: aMorph from: startPoint to: endPoint nSteps: numberOfMoveSteps delay: milliSeconds
	"Move aMorph along a straightline path from startPoint to endPoint"

	| delta point pathPoints animator  | 
	point := startPoint.
	delta := (endPoint - startPoint) / numberOfMoveSteps.
	pathPoints := OrderedCollection new.
	numberOfMoveSteps timesRepeat: [ pathPoints add: (point := point + delta)].
	pathPoints := pathPoints collect: [ :pt | pt rounded ].
	animator := Animator 
						actor: aMorph
						action: (Animator followPathAction: pathPoints)
						stepTime: milliSeconds 
						doneProc: (Animator doneAfterNTimes: numberOfMoveSteps).
	animator startStepping.! !

!Animator class methodsFor: 'class initialization' stamp: 'KenD 1/8/2022 14:16:39'!
initialize
"
	Animator initialize.
"
	| filePrefix |
	
	filePrefix := (CodePackage installedPackages at: #'Examples-Morphic')
		fullFileName pathAndLocalName at: 1.
	
	ButterflyForms := Array new: 15.
	1 to: 9 do: [ :n | ButterflyForms 
		at: n 
		put: (Form fromFileNamed: filePrefix, '/BlueButterfly/b0', n asString, '.png')].
	10 to: 15 do: [ :n | ButterflyForms 
		at: n 
		put: (Form fromFileNamed: filePrefix, '/BlueButterfly/b', n asString, '.png')]! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 9/20/2013 05:01'!
actor: aMorph action: aOneArgClosure

	^ self new actor: aMorph action: aOneArgClosure stepTime: self defaultStepTime ! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 5/6/2019 14:55:20'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps

	^ self new actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps doneProc: self alwaysFalse! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 5/6/2019 14:49:54'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps doneProc: predicateClosure

	| newInst |
	newInst := self new actor: aMorph 
					action: aOneArgClosure 
					stepTime: milllisecondsBetweenSteps 
					doneProc: predicateClosure.
	"animator property allows access through Morph and keeps instance from GC"
	aMorph setProperty: #animator toValue: newInst.
	^newInst ! !

!Animator class methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:57'!
defaultStepTime
	"Twice a second"

	^ 500 "milliSeconds"! !

!Animator class methodsFor: 'stepping' stamp: 'KenD 9/20/2013 15:57'!
restartStepping
	"Start all my instances"

	Smalltalk garbageCollectMost. "Clean out stale instances"
	self allInstancesDo: [ :a | a startStepping ].! !

!Animator class methodsFor: 'stepping' stamp: 'KenD 9/20/2013 12:04'!
stopStepping
	"Stop all my instances"

	self allInstancesDo: [ :a | a stopStepping ].! !

!Morph methodsFor: '*examples-morphic' stamp: 'KenD 1/8/2022 08:34:50'!
boxExtent
	"answer the extent to use in all the buttons. 
	 
	the label height is used to be proportional to the fonts preferences"
	| e |
	e _ Preferences windowTitleFont lineSpacing.
	^e@e! !
Animator initialize!
