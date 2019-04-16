'From Cuis 4.2 of 25 July 2013 [latest update: #2949] on 2 October 2016 at 9:44:53 am'!

!Morph methodsFor: 'menus' stamp: 'KenD 9/30/2016 08:12:46'!
dropShadowString
	"Answer the string to be shown in a menu to represent the  
	stickiness status"
	^ (self hasDropShadow 
		ifTrue: ['<yes>']
		ifFalse: ['<no>'])
		, 'show a shadow'! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 12:33:31'!
dropShadowForm
	"Answer the shadow only for the BlockMorph"

	|  srcForm destForm |
	srcForm := self shadowForm.
	destForm := srcForm copy.
	destForm 
		copy: (0@0 corner: srcForm extent) 
		from: srcForm 
		to: 0@0 - self dropShadowOffset 
		rule: 4. "erase"
	^ destForm
! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/29/2016 15:26:38'!
dropShadowOffset
	"Answer the drop shadow offset as a point.  
	Larger means more shade."

	^ 8@10! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 12:33:53'!
dropShadowShown

	| dsMorph |
	dsMorph := self valueOfProperty: #dropShadowMorph ifAbsent: [ ^false ].
	^ self submorphs includes: dsMorph! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 13:57:48'!
hasDropShadow
	
	^ self hasProperty: #dropShadowMorph! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 13:47:17'!
hideDropShadow
	
	self valueOfProperty: #dropShadowMorph
		 ifPresentDo: [ :dsMorph |
			self removeMorph: dsMorph.
			self removeProperty: #dropShadowMorph.
			self redrawNeeded 
	]! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/29/2016 15:05:31'!
resetDropShadow
	
	self hasDropShadow ifTrue: [ self hideDropShadow ; showDropShadow ]
	! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 15:09:16'!
setDropShadowMorph
	"private"

	| dsMorph |
	dsMorph := ImageMorph new image: self dropShadowForm.
	dsMorph morphPosition: self dropShadowOffset.
	self setProperty: #dropShadowMorph toValue: dsMorph.
	self redrawNeeded.

		
! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 15:09:43'!
shadowForm
	"private"
"
	[ :i | (ImageMorph new)  image: i shadowForm ;  openInWorld.] value: ImageMorph new.
"
	| aCanvas stencilForm depth |
	depth := Display depth.
	aCanvas := BitBltCanvas depth: depth over: (0@0 corner: self morphExtent).
	aCanvas image: (self imageForm: depth) at: 0@0.
	self submorphs reverseDo: [ :m | aCanvas image: (m imageForm: depth) at: m morphPosition ].
	stencilForm := aCanvas form. 
	aCanvas := BitBltCanvas depth: depth over: (0@0 corner: self morphExtent). 
	aCanvas stencil: stencilForm at: 0@0  color: (Color black alpha: 0.3).	 
	^ aCanvas form! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 13:46:55'!
showDropShadow
	
	self 
		valueOfProperty: #dropShadowMorph
		ifAbsent: [
			self setDropShadowMorph.
			self addMorphBack: (self valueOfProperty: #dropShadowMorph).
			self redrawNeeded 
		]! !

!Morph methodsFor: 'drop shadow' stamp: 'KenD 9/16/2016 13:43:29'!
toggleDropShadow
	
	self hasDropShadow 
		ifTrue: [ self hideDropShadow ] 
		ifFalse: [self showDropShadow ]! !


!SystemWindow methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:12:15'!
morphExtent: aPoint

	super morphExtent: aPoint.
	self resetDropShadow! !

!SystemWindow methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:13:02'!
morphExtentInWorld: newExtent
	"world coordinates"
	
	super morphExtentInWorld: newExtent.
	self resetDropShadow! !

!SystemWindow methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:10:38'!
morphLocalBounds

	^self
		morphTopLeft 
		extent: (self hasDropShadow
					ifTrue: [self morphExtent + self dropShadowOffset ]
					ifFalse: [self morphExtent ])! !


!Morph methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:06:36'!
morphExtent: aPoint
	"In our own coordinates!!
	Ignored by morphs that are not resizeable"
	self resetDropShadow! !

!Morph methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:06:47'!
morphExtentInWorld: newExtent
	"world coordinates
	Ignored by morphs that are not resizeable"
	self resetDropShadow! !

!Morph methodsFor: 'menus' stamp: 'KenD 9/30/2016 08:11:45'!
addToggleItemsToHaloMenu: aMenu
	"Add standard true/false-checkbox items to the memu"

	#(
		(stickinessString toggleStickiness 'whether I should be resistant to a drag done by mousing down on me')
		(lockedString lockUnlockMorph 'when "locked", I am inert to all user interactions')
		(dropShadowString toggleDropShadow 'whether I show a drop shadow')
	) do: [ :trip |  |item|
			item := aMenu addUpdating: trip first action: trip second.
			item setProperty:  #balloonText  toValue: trip third ]! !


!RectangleLikeMorph methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:17:37'!
morphExtent: newExtent
	"assume it is always in our coordinates!!"
	| oldBoundsInWorld |
	self flag: #jmvVer2.
	extent = newExtent ifFalse: [
		"Ask for the old bounds before updating them, but ask for repair only if extent was really changed."
		oldBoundsInWorld _ self morphBoundsInWorld.
		(self privateExtent: newExtent) ifTrue: [
			"Ask for the old bounds before updating them, but ask for repair only if extent was really changed."
			oldBoundsInWorld ifNotNil: [
				self invalidateDisplayRect: oldBoundsInWorld from: nil ].
			self someSubmorphPositionOrExtentChanged.
			owner ifNotNil: [ owner someSubmorphPositionOrExtentChanged ].
			self redrawNeeded ]].
	self resetDropShadow! !

!RectangleLikeMorph methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:19:30'!
morphExtentInWorld: newExtent
	"world coordinates"
	self flag: #jmvVer2.
	self morphExtent: (self internalizeDistanceFromWorld: newExtent).
	self resetDropShadow! !

!RectangleLikeMorph methodsFor: 'geometry' stamp: 'KenD 9/30/2016 13:23:56'!
morphPosition: newPos extent: newExtent
	"Change the position of this morph. Argument is in owner's coordinates."

	| oldBoundsInWorld someChange |

	"Ask for the old bounds before updating them, but ask for repair only if extent or position has really changed."
	oldBoundsInWorld _ self morphBoundsInWorld.
	someChange _ false.
	(location isTranslation: newPos) ifFalse: [
		location _ location withTranslation: newPos.
		someChange _ true ].

	extent = newExtent ifFalse: [
		(self privateExtent: newExtent) ifTrue: [
			someChange _ true ]].

	someChange ifTrue: [
		"Ask for the old bounds before updating them, but ask for repair only if extent or position has really changed."
		oldBoundsInWorld ifNotNil: [
			self invalidateDisplayRect: oldBoundsInWorld from: nil ].
		self someSubmorphPositionOrExtentChanged.
		owner ifNotNil: [ owner someSubmorphPositionOrExtentChanged ].
		self resetDropShadow.
		self redrawNeeded ]! !


!SystemWindow methodsFor: 'drawing' stamp: 'KenD 9/30/2016 13:31:14'!
addPossiblyUncoveredAreasIn: aRectangle to: aCollection
	"Answer an array of rectangles encompassing those areas in aRectangle not completely
	covered by self.
	All areas that might possibly be uncovered must be included."
	| basicBounds |
	"Exclude dropShadow"
	basicBounds := self morphTopLeft  extent: self morphExtent.
	(self isOrthoRectangularMorph and: [ self isOpaqueMorph ]) ifTrue: [
		aRectangle areasOutside: basicBounds do: [ :r |  aCollection add: r ].
		^self ].
	aCollection add: aRectangle! !

!SystemWindow methodsFor: 'submorphs-accessing' stamp: 'KenD 9/29/2016 15:24:42'!
submorphsDrawingOutsideReverseDo: aBlock
	"All our submorphs are inside us unless we have a drop shadow"
	
	self hasDropShadow 
		ifTrue: [ self unclippedSubmorphsReverseDo: aBlock ]! !


!ImageMorph methodsFor: 'geometry' stamp: 'KenD 9/29/2016 15:16:57'!
morphExtent: aPoint
	"Do nothing; my extent is determined by my image Form."

	"A clear case of a morph that shouldn't have an 'extent' ivar..."
	self flag: #jmvVer2.
	self resetDropShadow! !


!HaloMorph methodsFor: 'private' stamp: 'KenD 9/29/2016 18:19:31'!
endInteraction
	"Clean up after a user interaction with the a halo control"

	(target isInWorld not or: [owner isNil]) ifTrue: [^self].
	self isInWorld 
		ifTrue: [
			"make sure handles show in front"
			self comeToFront.
			self addHandles.
			target valueOfProperty: #wasShadowed
				    ifPresentDo: [ :ignoredValue |
					 target removeProperty: #wasShadowed;
							showDropShadow ]
		]! !

!HaloMorph methodsFor: 'private' stamp: 'KenD 9/29/2016 18:16:36'!
startGrow: evt with: growHandle
	"Initialize resizing of my target.  Launch a command representing it, to support Undo"

	| botRt |
	evt hand obtainHalo: self.	"Make sure the event's hand correlates with the receiver"
	self removeAllHandlesBut: growHandle.  "remove all other handles"
	"Hide dropShadow if shown"
	target hasDropShadow ifTrue: [ 
		target hideDropShadow;
			    setProperty: #wasShadowed toValue: true
	].
	botRt _ target morphPositionInWorld + target morphExtentInWorld.
	positionOffset _ (self world viewBox containsPoint: botRt)
		ifTrue: [evt eventPosition - botRt]
		ifFalse: [0@0]! !

