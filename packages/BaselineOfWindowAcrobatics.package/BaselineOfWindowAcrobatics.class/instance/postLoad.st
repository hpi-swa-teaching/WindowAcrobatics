baseline
postLoad

	WAHandler initialize.
	Project current addDeferredUIMessage: [
		"deferred because installation of WindowAcrobatics has completed at this point"
		(Project uiManager confirm: 'You successfully installed WindowAcrobatics. To enable it,\you need to set your WindowAcrobatics preferences.\Do you want to do that now?' withCRs title: 'WindowAcrobatics Installation')
			ifTrue: [
				| browser |
				browser := PreferenceBrowser open.
				browser selectedCategoryIndex: (browser categoryList indexOf: #WindowAcrobatics)]].