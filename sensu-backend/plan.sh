pkg_name=sensu-backend
pkg_origin=sensu
pkg_version="5.2.0"
pkg_maintainer="Sensu, Inc. <https://github.com/sensu/sensu-habitat/issues>"
pkg_license=("MIT")
pkg_source="http://sensu-ci-builds.s3.amazonaws.com/master/20190206-1403/goreleaser/sensu-enterprise-go_${pkg_version}_linux_amd64.tar.gz"
pkg_svc_run="sensu-backend start -c $pkg_svc_config_path/backend.yml"
pkg_shasum="ab7ee0538d40b92ffb4eea2d5a658cae1871cfad2f64ea7e522eb6023fb9fe04"
pkg_deps=(core/curl)
pkg_bin_dirs=(bin)
pkg_exports=(
  [port]=agent-port
  [etcd_peer_port]=etcd_peer_port
)
pkg_description="Sensu, Inc. 2.0 Backend"
pkg_upstream_url="https://sensu.io"

do_build(){
  return 0
}

do_install() {
  build_line "Installing sensu-backend binary"
  chmod +x "$HAB_CACHE_SRC_PATH/bin/sensu-backend"
  install -D "$HAB_CACHE_SRC_PATH/bin/sensu-backend" "$pkg_prefix/bin/sensu-backend"
}