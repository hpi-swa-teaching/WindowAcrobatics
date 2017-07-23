pages
addThumbnailsToCurrentPage

	(self pageDict at: self currentPage) do: [:thmb | self addMorphBack: thmb].