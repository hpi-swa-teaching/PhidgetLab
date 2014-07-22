baseline
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			spec
				package: 'Phidget-EToys';
				package: 'Phidget-Core' with: [spec requires: #('Phidget-EToys')];
				package: 'Phidget-Tests' with: [spec requires: #('Phidget-Core')];
				yourself.
			spec
				group: 'Tests' with: #('Phidget-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]