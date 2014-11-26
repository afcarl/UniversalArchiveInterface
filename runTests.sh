#!/bin/bash


# python3 -m unittest Tests.DbContentTests

# coverage run --source=./dbApi.py -m unittest Tests.DbApiTests

# Coverage doesn't work with cython files.
# Therefore, we don't run the BK Tree tests with it.
# python3 -m unittest Tests.BinaryConverterTests
# python3 -m unittest Tests.BKTreeTests

# coverage report
# coverage report --show-missing
# coverage erase


# python3 $(which nosetests) --exe --cover-package=dbApi --cover-package=dbPhashApi Tests.Test_PhashDbApi_Basic
# python3 $(which nosetests) --exe --with-coverage --cover-package=dbApi --cover-package=dbPhashApi Tests.Test_PhashDbApi_PHashStuff
# python3 $(which nosetests) --exe --cover-package=dbApi --cover-package=dbPhashApi Tests.Test_BKTree
# python3 $(which nosetests) --exe --with-coverage -s --cover-package=dbPhashApi Tests.Test_PhashDbApi_PHashStuff

# python3 $(which nosetests) --exe --with-coverage --cover-package=dbApi --cover-package=dbPhashApi Tests


python3 $(which nosetests) --with-coverage --exe --cover-package=UniversalArchiveInterface
coverage report --show-missing
coverage erase

python2 $(which nosetests) --with-coverage --exe --cover-package=UniversalArchiveInterface
coverage report --show-missing
coverage erase
