{pkgs}: rec {
  jvm = jvm21;
  jvm17 = pkgs.mkShell {packages = with pkgs; [jdk17 gradle];};
  jvm21 = pkgs.mkShell {packages = with pkgs; [jdk21 gradle];};
}
