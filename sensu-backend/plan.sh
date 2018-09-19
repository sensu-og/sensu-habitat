pkg_name=sensu-backend
pkg_filename=sensu-backend
pkg_origin=sensu
pkg_version="2.0.0-beta.4-1"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("MIT")
pkg_source="https://storage.googleapis.com/sensu-binaries/$pkg_version/linux/amd64/$pkg_filename"
pkg_svc_run="sensu-backend start -c $pkg_svc_config_path/backend.yml"
pkg_shasum="4fea31b3ffaaebc1c8ab4b487d5fae45f895a512d49123f494b18dc05c67533d"
pkg_deps=(core/curl)
pkg_bin_dirs=(bin)
pkg_exports=(
  [port]=agent-port
)
pkg_description="Sensu 2.0 Backend"
pkg_upstream_url="https://sensu.io"

do_unpack(){
  return 0
}

do_build(){
  return 0
}

do_install() {
  build_line "Installing $pkg_filename binary"
  chmod +x "$HAB_CACHE_SRC_PATH/$pkg_filename"
  install -D "$HAB_CACHE_SRC_PATH/$pkg_filename" "$pkg_prefix/bin/$pkg_filename"
}