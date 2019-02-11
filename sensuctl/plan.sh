pkg_name=sensuctl
pkg_origin=sensu
pkg_version="5.2.0"
pkg_maintainer="Sensu, Inc. <https://github.com/sensu/sensu-habitat/issues>"
pkg_license=("MIT")
pkg_source="http://sensu-ci-builds.s3.amazonaws.com/master/20190206-1403/goreleaser/sensu-enterprise-go_${pkg_version}_linux_amd64.tar.gz"
pkg_shasum="ab7ee0538d40b92ffb4eea2d5a658cae1871cfad2f64ea7e522eb6023fb9fe04"
pkg_bin_dirs=(bin)
pkg_description="Sensu, Inc. 2.0 sensuctl utility"
pkg_upstream_url="https://sensu.io"

do_build(){
  return 0
}

do_install() {
  build_line "Installing sensuctl binary"
  chmod +x "$HAB_CACHE_SRC_PATH/bin/sensuctl"
  install -D "$HAB_CACHE_SRC_PATH/bin/sensuctl" "$pkg_prefix/bin/sensuctl"
}
