name 'build_cookbook'
maintainer 'Chef Software, Inc'
maintainer_email 'ncerny@chef.io'
license 'apachev2'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'delivery-truck'
