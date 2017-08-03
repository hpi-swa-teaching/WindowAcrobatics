visualization
addNumberToVisualization: aNumber colored: aColor

	self visualization addMorphBack: 
		(StringMorph new 
			contents: aNumber asString;
			color: aColor;
			font: self defaultFont).