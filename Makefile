setup:
	rm -rf node_modules
	npm install

start: simple

simple:
	node app.js simple

open:
	(sleep 2 && open http://localhost:3000) &
	node app.js run $(filter-out $@,$(MAKECMDGOALS))

run:
	node app.js run $(filter-out $@,$(MAKECMDGOALS))

cycle:
	node app.js cycle $(filter-out $@,$(MAKECMDGOALS))

profile:
	node --profapp.js simple

profile-lazy:
	node --prof --prof_lazy app.js simple

debug:
	node --debug app.js run

debug-brk:
	node --debug-brk app.js run

build:
	# build step


.PHONY: setup start simple open run cycle profile profile-lazy debug debug-brk build