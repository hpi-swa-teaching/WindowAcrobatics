baseline
postLoad

	WAHandler initialize.
	(self confirm: 'You successfully installed WindowAcrobatics. To enable it, you need to set your WindowAcrobatics preferences. Do you want to do that now?' title: 'WindowAcrobatics Installation')
		ifTrue: [
			| browser |
			browser := PreferenceBrowser open.
			browser selectedCategoryIndex: (browser categoryList indexOf: #WindowAcrobatics)].