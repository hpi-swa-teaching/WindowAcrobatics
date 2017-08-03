initialization
initializeThumbnails

	| windows thumbnails |
	
	WAHandler switchingActive ifTrue: [windows := self windowsInCurrentSpace] 
								ifFalse: [windows := ActiveWorld submorphs select: [:m | m isSystemWindow]].
								
	thumbnails := OrderedCollection new.
	
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
		
		self initializeLabelMorph: thumbnail.
		thumbnails add: thumbnail].

	self initializePageDictionary: thumbnails.
	
	"Select the next possible window."
	selectionRectangle goBehind.
	
	thumbnails
		ifEmpty: [selectionRectangle hide. self currentPage: 0]
		ifNotEmpty: [
			self currentPage: 1.
			self addThumbnailsToCurrentPage.
			self selectWindow: (thumbnails size > 1
			ifTrue: [self thumbnailsOnPage second]
			ifFalse: [self thumbnailsOnPage first])].
		