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
				group: 'default' with: #('Project07-Core');
				group: 'phidgets' with: #('Phidget-Core');
				group: 'etoys' with: #('Phidget-EToys');
				group: 'Tests' with: #('Project07-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]