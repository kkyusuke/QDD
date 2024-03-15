from setuptools import setup
from setuptools.dist import Distribution

class BinaryDistribution(Distribution):
    def has_ext_modules(foo):
        return True

setup(
    name='qdd',
    packages=['qdd'],
    include_package_data=True,
    distclass=BinaryDistribution,
)