as yet unclassified
horizontalPosition: aHorizontalPosition verticalPosition: aVerticalPosition

	^ (alignments ifNil: [alignments := Dictionary new])
		at: (aVerticalPosition, aHorizontalPosition asString withFirstCharacterUppercase) asSymbol
		ifAbsentPut: [self new horizontalPosition: aHorizontalPosition; verticalPosition: aVerticalPosition]