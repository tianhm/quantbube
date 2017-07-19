init:
	pip3 install -r requirements.txt --upgrade
	pip3 install -r requirements-dev.txt --upgrade

test:
	tox -v

cov:
	py.test -v --cov=quantbube --cov-report html

publish:
	pip install twine
	python setup.py sdist bdist_wheel
	twine upload dist/*
	rm -fr build dist .egg requests.egg-info

doc:
	cd docs && make html
	@echo "\033[95m\n\nBuild successful! View the docs homepage at docs/_build/html/index.html.\n\033[0m"





