from setuptools import setup
from setuptools.dist import Distribution

class BinaryDistribution(Distribution):
    def has_ext_modules(foo):
        return True

import io
import os
import re
import shlex
import sys
from setuptools import find_packages
try:
	from skbuild import setup
except ImportError:
	print("Please update pip to pip 10 or greater, or a manually install the PEP 518 requirements in pyproject.toml", file=sys.stderr)
	raise

setup(
    packages=find_packages(where="qdd"),
	package_dir={'': "qdd"},
	include_package_data=True,
	cmake_args=['-DCMAKE_BUILD_TYPE=Release', '-DCMAKE_VERBOSE_MAKEFILE=1'],
	cmake_install_dir="qdd",
    distclass=BinaryDistribution,
)
