'From Cuis7.1 [latest update: #6578] on 10 August 2024 at 5:01:49 pm'!
'Description A blinking avatar with eyes following the mouse cursor.'!
!provides: 'Avatar' 1 6!
!requires: 'Morphic-Widgets-Extras' 1 0 nil!
SystemOrganization addCategory: #Avatar!


!classDefinition: #AvatarMorph category: #Avatar!
EllipseMorph subclass: #AvatarMorph
	instanceVariableNames: 'blink'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Avatar'!
!classDefinition: 'AvatarMorph class' category: #Avatar!
AvatarMorph class
	instanceVariableNames: ''!


!AvatarMorph commentStamp: '<historical>' prior: 0!
AvatarMorph new openInWorld .!

!AvatarMorph methodsFor: 'visual properties' stamp: 'HilaireFernandes 10/20/2017 11:10:03'!
defaultColor
	^ Color pink paler paler! !

!AvatarMorph methodsFor: 'drawing' stamp: 'hlsf 8/10/2024 16:55:31'!
drawIrisOn: canvas at: irisCenter
	| center radius shiftedDirection |
	radius := (extent x min: extent y) // 12.
	shiftedDirection := (self activeHand morphPosition - (self externalizeToWorld: irisCenter)) normalized * 5.
	center := irisCenter + shiftedDirection.
	canvas 
		ellipseCenter: center
		radius: radius asPoint
		borderWidth:  1 
		borderColor: Color black
		fillColor: Color blue! !

!AvatarMorph methodsFor: 'drawing' stamp: 'hlsf 8/10/2024 16:56:09'!
drawLeftEyeOn: canvas
	canvas 
		ellipseCenter: extent // 4
		radius: extent // 6
		borderWidth:  3 
		borderColor: Color black
		fillColor: Color white.
	self drawIrisOn: canvas at: extent // 4! !

!AvatarMorph methodsFor: 'drawing' stamp: 'hlsf 8/10/2024 16:56:48'!
drawOn: canvas
	super drawOn: canvas.
	self drawLeftEyeOn: canvas.
	self drawRightEyeOn: canvas.
	"Mouth, no much option to draw it"
	canvas line: (extent x // 4) @ (extent y * 3 // 4) to: extent *3 // 4 width: 3 color: Color brown! !

!AvatarMorph methodsFor: 'drawing' stamp: 'hlsf 8/10/2024 16:57:15'!
drawRightEyeOn: canvas
	blink
	ifFalse: [ 
		canvas 
			ellipseCenter: (extent x * 3 // 4) @ (extent y // 4)
			radius: extent // 6
			borderWidth:  3 
			borderColor: Color black
			fillColor: Color white.
		self drawIrisOn: canvas at: (extent x * 3 // 4) @ (extent y // 4)]
	ifTrue: [
		canvas 
			line: (extent x * 7 // 12) @ (extent y // 4) to: (extent x *11 // 12) @ (extent y // 4) width: 3 color: Color black]
! !

!AvatarMorph methodsFor: 'initialization' stamp: 'HilaireFernandes 10/20/2017 17:14:11'!
initialize
	super initialize.
	extent _ 70@90.
	blink _ false! !

!AvatarMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/20/2017 21:34:00'!
step
	blink _ 10 atRandom > 7 .
	self redrawNeeded! !

!AvatarMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/20/2017 21:13:30'!
stepTime
	^ 500! !

!AvatarMorph methodsFor: 'stepping' stamp: 'HilaireFernandes 10/20/2017 17:11:03'!
wantsSteps
	^ true! !
