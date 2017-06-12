as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'WindowAcrobatics-Core';
				package: 'WindowAcrobatics-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('WindowAcrobatics-Core');
				group: 'tests' with: #('WindowAcrobatics-Tests')];
				yourself