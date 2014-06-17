baseline
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			spec
				package: 'Project07-Core';
				package: 'Phidget-Core';
				package: 'Phidget-EToys';
				package: 'Project07-Tests' with: [ spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('Project07-Core', 'Project07-Core', 'Phidget-Core', 'Phidget-EToys');
				group: 'Tests' with: #('Project07-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]