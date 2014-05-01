baseline
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			spec
				package: 'Project07-Core';
				package: 'Project07-Tests' with: [ spec requires: #('Project07-Core')];
				yourself.
			spec
				group: 'default' with: #('Project07-Core');
				group: 'Tests' with: #('Projeckt07-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]