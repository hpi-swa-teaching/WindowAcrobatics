drawing
addNumberToSign: aNumber colored: aColor

	self addMorphBack: 
		(StringMorph new 
			contents: aNumber asString;
			color: aColor;
			font: (StrikeFont familyName: 'ComicSansMS' pointSize: 36 emphasized: 1)).