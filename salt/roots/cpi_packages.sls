utilities.repo:
  pkgrepo.managed:
    - humanname: utilities
    - url: http://download.opensuse.org/repositories/utilities/openSUSE_Leap_$releasever
    - refresh: 1
    - refresh_db: true
    - gpgcheck: 0

security.repo:
  pkgrepo.managed:
    - humanname: security
    - url: http://download.opensuse.org/repositories/security/openSUSE_Leap_$releasever
    - refresh: 1
    - refresh_db: true
    - gpgcheck: 0

base.packages:
  pkg.installed:
    - pkgs:
      - autoconf
      - automake
      - bash-completion
      - cmake
      - git
      - jq
      - go
      - gpaste
      - gnutls
      - htop
      - the_silver_searcher
      - tmux
      - tree
      - vim
      - xz 

utilities.packages:
  pkg.installed:
    - fromrepo: utilities 
    - pkgs:
      - direnv

security.packages:
  pkg.installed:
    - fromrepo: security
    - pkgs:
      - lastpass-cli
