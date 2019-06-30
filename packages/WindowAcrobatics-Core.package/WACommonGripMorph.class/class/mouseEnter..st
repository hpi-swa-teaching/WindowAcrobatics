as yet unclassified
mouseEnter: aGrip

	| relevantNeighbours |
	Sensor controlKeyPressed ifFalse: [^ self].
	(aGrip isKindOf: self) ifTrue: [^ self].
	
	relevantNeighbours := OrderedCollection new.
	CornerGripMorph allSubInstances
		select: [:anotherGrip |
			(anotherGrip ~= aGrip
				and: [(anotherGrip isKindOf: self) not]
				and: [anotherGrip world = aGrip world]
				and: [(aGrip isKindOf: BorderGripMorph) = (anotherGrip isKindOf: BorderGripMorph)]
				and: [(aGrip isKindOf: BorderGripMorph) ==> [anotherGrip orientation = aGrip orientation]]
				and: [(self gapBetween: aGrip and: anotherGrip) abs < self maxGap]
				and: [(anotherGrip bounds corners collect: [:corner |
					corner dist: (aGrip bounds pointNearestTo: corner)]) min < self maxDist])]
		thenDo: [:anotherGrip |
			relevantNeighbours add: anotherGrip].
	relevantNeighbours ifEmpty: [^ self].

	relevantNeighbours add: aGrip.
	self openGripsFor: relevantNeighbours.