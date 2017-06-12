as yet unclassified
defaultValues
	
	^ Dictionary new 
			add: 'leftUpperCorner'->[0@18]; 
			add: 'leftMiddleCorner'->[0@(World extent y / 2) asInteger];
			add: 'fullExtent'->[(World extent x )@ (World extent y - 18)];
			add: 'halfVerticleScreen' -> [(World extent x / 2) asInteger @ (World extent y - 18)];
			add: 'upperMiddle' -> [(World extent x / 2) asInteger @18];
			add: 'halfHorizontalScreen' -> [(World extent x)@(World extent y / 2) asInteger];
			yourself