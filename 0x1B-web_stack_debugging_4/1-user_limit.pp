#Enable the user holberton to login and open files without error.

# Increase hard file limit for Holberton user.
exec {'increase-hard-file-limit-for-holberton-user':
  command => 'sed -i "/^holberton hard/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games',
}

# Increase soft file limit for Holberton user.
exec {'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "/^holberton soft/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games',
}i
