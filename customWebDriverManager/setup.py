from setuptools import setup, find_packages

setup(
    name='custom_webdrivermanager',
    version='0.10.0',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        # Add any dependencies here
    ],
    package_data={
        '': ['versioneer.py'],
    },
)
