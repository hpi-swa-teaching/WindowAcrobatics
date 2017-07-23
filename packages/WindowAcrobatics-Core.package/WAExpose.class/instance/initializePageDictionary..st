initialization
initializePageDictionary: aList

	| numberOfPages |
		
	self pageDict: Dictionary new.
	
	numberOfPages := (aList size / self numberOfWindowsOnPage) ceiling.	
	1 to: numberOfPages do: [:i |  
		self pageDict at: i put: (aList copyFrom: (i - 1) * self numberOfWindowsOnPage  + 1 to: (Bag with: i*self numberOfWindowsOnPage with: aList size) min)]. 