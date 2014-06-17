baseline
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			spec
				package: 'Phidget-EToys';
				package: 'Project07-Core';
				package: 'Phidget-Core' with: [ spec requires: #('Phidget-EToys' 'Project07-Core')];
				package: 'Project07-Tests' with: [ spec requires: #('Phidget-Core')];
				yourself.
			spec
				group: 'default' with: #('Project07-Core');
				group: 'Tests' with: #('Project07-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]