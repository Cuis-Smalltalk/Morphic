'From Cuis7.1 [latest update: #6669] on 2 September 2024 at 8:24:38 pm'!
'Description A morph simulating a dice with an arbitrary number of faces, bellow 9.'!
!provides: 'Dice' 1 5!
SystemOrganization addCategory: #Dice!


!classDefinition: #DiceMorph category: #Dice!
BorderedBoxMorph subclass: #DiceMorph
	instanceVariableNames: 'faces value isRolling'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dice'!
!classDefinition: 'DiceMorph class' category: #Dice!
DiceMorph class
	instanceVariableNames: ''!


!DiceMorph commentStamp: 'HilaireFernandes 10/28/2017 16:57:58' prior: 0!
Simulate a dice with an arbitrary number of faces. The dice can be rolling..

| dice |
dice := DiceMorph new openInWorld.
dice startRolling.
!

!DiceMorph methodsFor: 'drawing' stamp: 'hlsf 8/10/2024 16:55:03'!
drawDotOn: canvas at: aPoint
	| radius center |
	center := aPoint * extent.
	radius := extent // 12.
	canvas 
		ellipseCenter: center
		radius: radius
		borderWidth: 0 borderColor: Color black fillColor: Color black! !

!DiceMorph methodsFor: 'drawing' stamp: 'tsl 9/2/2024 20:23:51'!
drawOn: canvas
	canvas 
		roundRect: self localBounds 
		color: color 
		radius: 10	.
	(self perform: ('face', value asString) asSymbol) do: [:eachPoint |
		self drawDotOn: canvas at: eachPoint]! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:37:38'!
face1
	^{0.5@0.5}
! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:37:48'!
face2
	^{0.25@0.25 . 0.75@0.75}! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:37:56'!
face3
	^{0.25@0.25 . 0.75@0.75 . 0.5@0.5}! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:38:07'!
face4
	^{0.25@0.25 . 0.75@0.25 . 0.75@0.75 . 0.25@0.75}! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:38:21'!
face5
	^{0.25@0.25 . 0.75@0.25 . 0.75@0.75 . 0.25@0.75 . 0.5@0.5}! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 16:17:29'!
face6
	^{0.25@0.25 . 0.75@0.25 . 0.75@0.75 . 0.25@0.75 . 0.25@0.5 . 0.75@0.5}! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:38:35'!
face7
	^{0.25@0.25 . 0.75@0.25 . 0.75@0.75 . 0.25@0.75 . 0.25@0.5 . 0.75@0.5 . 0.5@0.5}! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:38:46'!
face8
	^{0.25@0.25 . 0.75@0.25 . 0.75@0.75 . 0.25@0.75 . 0.25@0.5 . 0.75@0.5 . 0.5@0.5 . 0.5@0.25}! !

!DiceMorph methodsFor: 'faces' stamp: 'HilaireFernandes 10/28/2017 15:38:53'!
face9
	^{0.25@0.25 . 0.75@0.25 . 0.75@0.75 . 0.25@0.75 . 0.25@0.5 . 0.75@0.5 . 0.5@0.5 . 0.5@0.25 . 0.5@0.75}! !

!DiceMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 10/28/2017 16:43:09'!
faces: integer
"Its number of faces"
	faces _ integer min: 9.
	self redrawNeeded ! !

!DiceMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 10/28/2017 15:40:46'!
value
	^ value! !

!DiceMorph methodsFor: 'initialization' stamp: 'HilaireFernandes 10/28/2017 16:48:31'!
initialize
	super initialize.
	extent _ 70@70.
	faces _ 6.
	value _ 1.
	isRolling _ false! !

!DiceMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/28/2017 16:55:24'!
startRolling
	isRolling _ true.
	self startStepping! !

!DiceMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/28/2017 16:45:06'!
step
	value _ faces atRandom.
	self redrawNeeded ! !

!DiceMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/28/2017 16:56:56'!
stepTime
	^ 100! !

!DiceMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/28/2017 16:56:02'!
stopRolling
	isRolling _ false.
	self stopStepping! !

!DiceMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/28/2017 16:46:00'!
wantsSteps
	^ isRolling! !
