as yet unclassified
mouseEnter: aGrip

	| relevantNeighbours |
	Sensor controlKeyPressed ifTrue: [^ self].
	(aGrip isKindOf: self) ifTrue: [^ self].
	
	relevantNeighbours := OrderedCollection new.
	CornerGripMorph allSubInstances do: [:anotherGrip |
		(anotherGrip ~= aGrip
			and: [(anotherGrip isKindOf: self) not]
			and: [(aGrip isKindOf: BorderGripMorph) = (anotherGrip isKindOf: BorderGripMorph)]
			and: [(aGrip isKindOf: BorderGripMorph) ==> [anotherGrip orientation = aGrip orientation]]
			and: [anotherGrip world = aGrip world]
			and: [(self gapBetween: aGrip and: anotherGrip) abs < self maxGap]
			and: [(anotherGrip bounds corners collect: [:corner |
				corner dist: (aGrip bounds pointNearestTo: corner)]) min < self maxDist])
			ifTrue: [relevantNeighbours add: anotherGrip]].
	relevantNeighbours ifEmpty: [^ self].

	relevantNeighbours add: aGrip.
	WACommonGripMorph openGripsFor: relevantNeighbours.