{
  config,
  lib,
  modulesPath,
  ...
}:
{
  security.lsm = lib.mkForce [ ];
  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;

  security.tpm2.enable = true;
  security.tpm2.pkcs11.enable = true;
  security.tpm2.tctiEnvironment.enable = true;

  # unlock GPG keyring on login
  security.pam.services.greetd.gnupg.enable = true;
}
