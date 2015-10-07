class puppetconf::windows::dsc_service {

  dsc_service { 'Windows Update': 
    dsc_name           => 'wuauserv',
    dsc_state          => 'Running',
    dsc_startuptype    => 'Automatic',
    dsc_ensure         => 'present',
    dsc_builtinaccount => 'LocalSystem',
    dsc_displayname    => 'Windows Update',
    dsc_description    => 'Enables the detection, download, and installation of updates for Windows and other programs. If this service is disabled, users of this computer will not be able to use Windows Update or its automatic updating feature, and programs will not be able to use the Windows Update Agent (WUA) API.',
  }

  service { 'wuauserv':
    ensure  => running,
    enable => true,
  }

}
