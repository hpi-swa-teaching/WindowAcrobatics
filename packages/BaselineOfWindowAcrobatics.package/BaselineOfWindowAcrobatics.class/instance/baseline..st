baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'Widgets' with: [spec
			repository: 'github://hpi-swa/widgets:master/repository'].
		spec
			package: 'WindowAcrobatics-Core' with: [spec requires: 'Widgets'];
			package: 'WindowAcrobatics-Tests'.
		spec
			group: 'default' with: #('WindowAcrobatics-Core');
			group: 'tests' with: #('default' 'WindowAcrobatics-Tests')].
	spec
		postLoadDoIt: #postLoad.