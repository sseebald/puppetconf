class puppetconf::windows::dsc_file {
  
  #Puppet module showing the differences of using DSC in Puppet vs just Puppet

  #get-dscresource -name [resource] | select-object -expandproperty [thing]

  dsc_file { 'dsc.txt':
    dsc_ensure          => 'present',
    dsc_type            => 'file',
    dsc_contents        => 'This is a file created with dsc',
    dsc_destinationpath => 'C:\Users\Administrator\Desktop\dsc.txt',
    dsc_attributes      => ['ReadOnly'],
  }

  file { 'C:\Users\Administrator\Desktop\puppet.txt':
    ensure   => file,
    content => 'This is a file created with Puppet',
  }

}
