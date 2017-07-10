as yet unclassified
initializeThumbnails

	| windows thumbnails numberPages |
	
	WAHandler switchingActive ifTrue: [windows := self getWindowsInCurrentSpace] 
								ifFalse: [windows := ActiveWorld submorphs select: [:m | m isSystemWindow]].
								
	thumbnails := OrderedCollection new.
	numberPages := (windows size / self numberOfWindowsOnPage) ceiling.
	
	windows do: [:wnd |
		| thumbnail|
		
		wnd hasDropShadow in: [:oldShadowValue |
			wnd hasDropShadow: false.
			[thumbnail := wnd imageForm]
				ensure: [wnd hasDropShadow: oldShadowValue]].
		
		thumbnail := thumbnail scaledToSize: thumbnail extent // 2.3.
		thumbnail := thumbnail asMorph.
		
		thumbnail setProperty: #window toValue: wnd. 
		thumbnail on: #click send: #activateWindowFromEvent:thumbnail: to: self.
		thumbnail on: #mouseEnter send: #selectWindowFromEvent:thumbnail: to: self.
		
		thumbnail addMorph: (TextMorph new color: Color white;
			position: thumbnail position x@thumbnail position y - 25;
			contents: wnd label;
			margins: 30@5;
			lock;
			yourself).

		thumbnails add: thumbnail].

	1 to: numberPages do: [:i |  
		self pageDict at: i put: (thumbnails copyFrom: (i - 1) * self numberOfWindowsOnPage  + 1 to: (Bag with: i*self numberOfWindowsOnPage with: thumbnails size) min)]. 
	
	"Select the next possible window."
	selectionRectangle goBehind.
	
	windows
		ifEmpty: [selectionRectangle hide. self currentPage: 0]
		ifNotEmpty: [
			self currentPage: 1.
			(self pageDict at: self currentPage) do: [:thmb | self addMorphBack: thmb].
			self selectWindow: (windows size > 1
			ifTrue: [self thumbnailsOnPage second]
			ifFalse: [self thumbnailsOnPage first])].