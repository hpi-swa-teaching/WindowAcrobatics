private
mapKey: aKeyChar toBindings: bindings at: bindingKey

	| deprecatedKey |
	deprecatedKey := bindings keyAtValue: bindingKey.
	bindings at: aKeyChar ifPresent: [:currentBinding |
		(Project current uiManager
			chooseFromLabeledValues: (OrderedDictionary newFrom: {
				'Override binding' -> [].
				'Cancel' -> [^ false]. })
			title: ('Key is already assigned to {1}.' format: {currentBinding})) value].
	bindings
		removeKey: deprecatedKey;
		add: aKeyChar -> bindingKey.