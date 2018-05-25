$pkg_name="honey_badger_gpo"
$pkg_origin="thelunaticscripter"
$pkg_version="0.1.0"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
# $pkg_filename="$pkg_name-$pkg_version.zip"
# $pkg_shasum="TODO"

function Invoke-Install {
  mkdir "$pkg_prefix/bin"
  Copy-Item -Path "$PLAN_CONTEXT/../LGPO.exe" -Destination "$pkg_prefix/bin"
  Copy-Item -Path "$PLAN_CONTEXT/../{57E527AA-78D4-4CEF-8070-317768CB2813}" -Destination "$pkg_prefix/bin" -Recurse -Force
}
