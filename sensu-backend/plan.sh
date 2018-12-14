pkg_name=sensu-backend
pkg_origin=sensu
pkg_version="5.0.1"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("MIT")
pkg_source="https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/$pkg_version/sensu-go-$pkg_version-linux-amd64.tar.gz"
pkg_svc_run="sensu-backend start -c $pkg_svc_config_path/backend.yml"
pkg_shasum="26b5ad015e22858885a02160ef493b5418d50de65bfeacabb46f19bc3a736ce8"
pkg_deps=(core/curl)
pkg_bin_dirs=(bin)
pkg_exports=(
  [port]=agent-port
  [etcd_peer_port]=etcd_peer_port
)
pkg_description="Sensu 2.0 Backend"
pkg_upstream_url="https://sensu.io"

do_build(){
  return 0
}

do_install() {
  build_line "Installing sensu-backend binary"
  chmod +x "$HAB_CACHE_SRC_PATH/bin/sensu-backend"
  install -D "$HAB_CACHE_SRC_PATH/bin/sensu-backend" "$pkg_prefix/bin/sensu-backend"
}