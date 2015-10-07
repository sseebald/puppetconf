class puppetconf::windows::dsc_baseline {

  #file { 'C:\Win8.1AndW2K12-KB3066437-x64.msu':
  #  ensure => present,
  #  source => 'puppet:///modules/puppetconf/W2K12-KB3066438-x64.msu',
  #} 

  #dsc::lcm_config { 'disable_lcm':
  #  refresh_mode => 'Disabled',
  #}

}
