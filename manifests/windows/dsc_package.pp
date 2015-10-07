class puppetconf::windows::dsc_package {

  dsc_package { '':
    dsc_ensure    => 'present',
    dsc_name      => '',
    dsc_path      => '',
    dsc_productid => '',
    dsc_arguments => [''],
  }


  package { '': 
    ensure => installed,
    source => '',
  } 

}
