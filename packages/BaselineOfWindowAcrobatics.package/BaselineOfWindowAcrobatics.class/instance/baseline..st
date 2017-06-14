nil
baseline: spec
	<baseline>
	spec for: #'common' do: [
			spec baseline: 'Widgets' with: [spec
							 repository: 'github://hpi-swa/widgets:master/repository'].
			spec
				package: 'WindowAcrobatics-Core';
				package: 'WindowAcrobatics-Tests';

				group: 'default' with: #('WindowAcrobatics-Core');
				group: 'tests' with: #('default' 'WindowAcrobatics-Tests' 'Widgets')]