class puppetconf::windows::dsc_windowsfeature {

  dsc_windowsfeature { 'IIS': 
    dsc_ensure               => 'present',
    dsc_name                 => 'Web-Server',
    dsc_includeallsubfeature => 'true',
    dsc_source               => 'E:\sources\SxS', # Needs a source because it will install all the .net stuff as well, unlike the options below which will not
  }

  #With Puppet, we require additional modules to enable windows features. Can be done with either puppetlabs/dism or puppet/windowsfeature

  windowsfeature { 'Web-Server':
    ensure             => present,
    installsubfeatures => true,
  }

  dism { 'IIS-WebServer':
    ensure => present,
    all    => true,
  }

}
