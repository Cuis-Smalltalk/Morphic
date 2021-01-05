'From Cuis 5.0 [latest update: #4519] on 5 January 2021 at 3:00:09 pm'!
'Description A WheelMorph is a mouse based "thumb wheel" for adjusting a value.
'!
!provides: 'WheelMorph' 1 6!
SystemOrganization addCategory: 'WheelMorph'!


!classDefinition: #WheelMorph category: 'WheelMorph'!
WidgetMorph subclass: #WheelMorph
	instanceVariableNames: 'target actionSelector factor circular old angle maxAngle lastRedraw isHorizontal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WheelMorph'!
!classDefinition: 'WheelMorph class' category: 'WheelMorph'!
WheelMorph class
	instanceVariableNames: ''!

!classDefinition: #ScrollWheelMorph category: 'WheelMorph'!
WheelMorph subclass: #ScrollWheelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WheelMorph'!
!classDefinition: 'ScrollWheelMorph class' category: 'WheelMorph'!
ScrollWheelMorph class
	instanceVariableNames: ''!


!WheelMorph commentStamp: 'HilaireFernandes 11/5/2017 16:42:57' prior: 0!
A thumb wheel widget control:

| w |
w := WheelMorph new.
w color: Color red.
w target: Transcript; actionSelector: #print:.
w openInWorld.
!

!ScrollWheelMorph commentStamp: '<historical>' prior: 0!
I am a WheelMorph which sends MouseScrollEvent's to my target.

| ed model wheel |
ed := TextEditor openTextEditor.
"paste a bunch of text to get scrollbar"
model := ed layoutMorph submorphs first. "TextModelMorph"
wheel := ScrollWheelMorph target: model.
wheel beVertical.
wheel openInWorld. "OK. Try it out!!"!

!WheelMorph methodsFor: 'accessing'!
actionSelector
	^ actionSelector
! !

!WheelMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 11/5/2017 12:27:56'!
actionSelector: aSymbol
	actionSelector _ aSymbol.

! !

!WheelMorph methodsFor: 'accessing'!
angle
	^angle! !

!WheelMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 11/5/2017 11:09:00'!
angle: aNumber
	angle _ aNumber! !

!WheelMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 11/5/2017 16:42:45'!
color: aColor
	super color: aColor.
	self borderColor: aColor muchDarker! !

!WheelMorph methodsFor: 'accessing'!
factor
	^factor! !

!WheelMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 11/5/2017 11:09:05'!
factor: aFloat
	factor _ aFloat! !

!WheelMorph methodsFor: 'accessing' stamp: 'KenD 4/26/2020 06:44:34'!
isHorizontal
	^ isHorizontal ! !

!WheelMorph methodsFor: 'accessing'!
maxAngle
	^maxAngle! !

!WheelMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 11/5/2017 11:09:10'!
maxAngle: aNumber
	maxAngle _ aNumber! !

!WheelMorph methodsFor: 'accessing'!
target
	^target! !

!WheelMorph methodsFor: 'accessing' stamp: 'HilaireFernandes 11/5/2017 11:09:16'!
target: aTargetObject
	target _ aTargetObject! !

!WheelMorph methodsFor: 'private' stamp: 'HilaireFernandes 11/5/2017 12:15:57'!
addAngle: aNumber
	| new |
	new _ self angle + aNumber.
	self isCircular ifTrue: [new _ new \\ self maxAngle].
	self angle: new.
	lastRedraw _ lastRedraw + aNumber.
	(lastRedraw abs > 2) ifTrue: [
		lastRedraw _ 0.
		self changed.
		self redrawNeeded]! !

!WheelMorph methodsFor: 'properties' stamp: 'HilaireFernandes 11/5/2017 11:10:42'!
beCircular
	circular _ true! !

!WheelMorph methodsFor: 'properties' stamp: 'KenD 4/26/2020 06:55:42'!
beHorizontal
	self isHorizontal
		ifFalse: [
			isHorizontal := true.
			self morphExtent: (self morphExtent transposed).
			self redrawNeeded.
			].
		! !

!WheelMorph methodsFor: 'properties' stamp: 'HilaireFernandes 11/5/2017 11:11:02'!
beLinear
	circular _ false! !

!WheelMorph methodsFor: 'properties' stamp: 'KenD 4/26/2020 06:55:55'!
beVertical
	self isHorizontal
		ifTrue: [
			isHorizontal := false. 
			self morphExtent: (self morphExtent transposed).
			self redrawNeeded] ! !

!WheelMorph methodsFor: 'properties' stamp: 'KenD 4/26/2020 06:48:13'!
defaultExtent

	^100@23! !

!WheelMorph methodsFor: 'properties'!
isCircular
	^circular! !

!WheelMorph methodsFor: 'properties'!
isLinear
	^circular not! !

!WheelMorph methodsFor: 'properties'!
isVertical
	^self isHorizontal not! !

!WheelMorph methodsFor: 'event handling' stamp: 'KenD 4/26/2020 15:03:06'!
doTargetAction: cursorPoint
	| new delta |
	self isHorizontal
		ifTrue: [ "left lower, right higher"
				new _ cursorPoint x. 
				delta _ new - old
		]
		ifFalse: [ "down lower, up higher"
				new _ cursorPoint y. 
				delta _ old - new 
		].
	
	delta isZero ifTrue: [^self].
	self addAngle: delta.
	(target ~~ nil and: [actionSelector ~~ nil]) ifTrue: [
		Cursor normalCursor showWhile: [
			target perform: actionSelector withArguments: (Array with: (delta * self factor))]].
	old _ new.
! !

!WheelMorph methodsFor: 'event handling'!
handlesMouseDown: evt
	^true
! !

!WheelMorph methodsFor: 'event handling' stamp: 'HilaireFernandes 11/5/2017 12:12:54'!
mouseButton1Down: evt localPosition: position
	self isHorizontal
		ifTrue: [old _ position x]
		ifFalse: [old _ position y].! !

!WheelMorph methodsFor: 'event handling' stamp: 'HilaireFernandes 11/5/2017 12:12:40'!
mouseMove: evt localPosition: position
	(evt anyButtonPressed)
		ifTrue: [self doTargetAction: position]! !

!WheelMorph methodsFor: 'drawing' stamp: 'HilaireFernandes 11/5/2017 16:44:01'!
drawOn: aCanvas
	| interval delta frame x0 x1 y0 y1 deltaX deltaY  |
	super drawOn: aCanvas.		"border & background"
	frame := self morphLocalBounds insetBy: 2.
	aCanvas frameRectangle: frame color: color borderWidth: 1 borderStyleSymbol: #raised.
	frame := frame insetBy: 1.
	x0 := frame origin x.
	x1 := frame corner x.
	y0 := frame origin y.
	y1 := frame corner y.
	deltaX := (x1 - x0) / 2.
	deltaY := (y1 - y0) / 2.
	interval := 10.
	delta := self angle \\ interval.
	1 to: (self maxAngle / (2 * interval)) rounded do: [ :i |
		| x y |
		self isHorizontal ifTrue: [
			x := x0 + deltaX - (((i * interval + delta) * (2 * Float pi / 360.0)) cos * deltaX).
			aCanvas fillRectangle: (Rectangle origin: (x-1)@y0 corner: x@y1) color: borderColor]
		ifFalse: [
			y := y0 + deltaY - (((i * interval + delta) * (2 * Float pi / 360.0)) cos * deltaY).
			aCanvas fillRectangle: (Rectangle origin: x0@(y-1) corner: x1@y) color: borderColor]
	]! !

!WheelMorph methodsFor: 'initialization' stamp: 'KenD 4/26/2020 06:47:54'!
initialize
	super initialize.
	self angle: 0.
	self maxAngle: 360.
	self factor: 1.0.
	self morphExtent: self defaultExtent.
	isHorizontal := true.
	self beCircular.
	self color: Color lightGray.
	lastRedraw := 0.! !

!WheelMorph class methodsFor: 'instance creation' stamp: 'KenD 4/26/2020 07:21:14'!
target: aTarget actionSelector: aSymbol
	
	^ self new :: target: aTarget; actionSelector: aSymbol
! !

!ScrollWheelMorph methodsFor: 'event handling' stamp: 'jmv 1/5/2021 14:30:51'!
doTargetAction: cursorPoint
	| new delta mouseScrollDirection |
	self isHorizontal
		ifTrue: [ "left lower, right higher"
				new _ cursorPoint x. 
				delta _ new - old.
				(delta < 0)
					ifTrue:   [ mouseScrollDirection := #left ] 
					ifFalse:  [ mouseScrollDirection := #right ] 
		]
		ifFalse: [ "down lower, up higher"
				new _ cursorPoint y. 
				delta _ old - new.
				(delta < 0)
					ifTrue:   [ mouseScrollDirection := #down ] 
					ifFalse:  [ mouseScrollDirection := #up ] 
		].
	
	delta isZero ifTrue: [^self].
	self addAngle: delta.
	old _ new.
		
	(target ~~ nil) ifTrue: [ | scrollEvent wheelPosition |
		wheelPosition := self morphPosition + (self morphExtent // 2). "wheel center"
		scrollEvent := MouseScrollEvent new
						setType: #mouseScroll
						position: wheelPosition
						direction: mouseScrollDirection
						buttons: InputSensor mouseButton1
						hand: self activeHand
						stamp: Time localMillisecondClock.

		Cursor normalCursor showWhile: [ "Send a scrollEvent for each 'tick' "
			1 to: (delta abs) do: [ :count | scrollEvent sendEventTo: target ]
		]
	]

! !

!ScrollWheelMorph class methodsFor: 'instance creation' stamp: 'KenD 4/28/2020 13:18:21'!
target: aTarget
	
	^ self new :: target: aTarget
! !

!ScrollWheelMorph class methodsFor: 'instance creation' stamp: 'KenD 4/28/2020 13:20:02'!
target: aTarget actionSelector: aSymbol
	
	self error: 'ScrollWheelMorph''s only action is to send MouseScrollEvents'
! !
