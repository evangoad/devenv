
from setuptools import setup
import os


setup(
       name='devenv',
       version='0.0.3',
       scripts=['bin/devenv'],
       install_requires=['unipath','setuptools','ansible']
     )
