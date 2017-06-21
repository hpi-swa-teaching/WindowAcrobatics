as yet unclassified
addNumberToMorph: aNumber colored: aColor

	self addMorphBack: (StringMorph new center: self center; 
			contents: aNumber asString;
			color: aColor;
			font: (StrikeFont familyName: 'ComicSansMS' pointSize: 36 emphasized: 1)).