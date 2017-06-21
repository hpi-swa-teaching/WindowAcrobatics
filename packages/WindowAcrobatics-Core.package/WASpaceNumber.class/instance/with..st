as yet unclassified
with: aNumber

	self extent: ActiveWorld extent x@70;
		clipSubmorphs: true;
		disableTableLayout: true;
		color: (Color black alpha: 0.6);
		yourself.
		
	self addMorphBack: (StringMorph new center: self center; 
			contents: aNumber asString;
			color: Color gray;
			font: (StrikeFont familyName: 'ComicSansMS' pointSize: 36 emphasized: 1)).
			
	self openInWorld.