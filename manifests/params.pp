# == Class: class_name
#
class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    'Redhat', 'Amazon': {
      $package_name = 'httpd'
      $service_name = 'httpd'
      }
    default: {
        fail("${::operatingsystem} not supported")
    }
  }
  $webpage_text = 'Welcome to Hemanta default webpage'
}
