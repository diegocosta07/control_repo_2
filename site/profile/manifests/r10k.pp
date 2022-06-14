class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/diegocosta07/control_repo_2',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl      => true,
  }
  class {'r10k::webhook':
    user  => 'root',
    group => 'root',
  }
}
