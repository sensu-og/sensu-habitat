$pkg_name="sensu-agent-win"
$pkg_filename="sensu-agent"
$pkg_origin="ncr_devops_platform"
$pkg_version="5.2.0"
$pkg_maintainer="Sensu, Inc. <https://github.com/sensu/sensu-habitat/issues>"
$pkg_license=("MIT")
$pkg_source="http://sensu-ci-builds.s3.amazonaws.com/master/20190206-1403/goreleaser/sensu-enterprise-go_${pkg_version}_windows_amd64.tar.gz"
$pkg_svc_run="sensu-agent.exe start -c $pkg_svc_config_path/agent.yml"
$pkg_shasum="4de716eedb1cbd84163784e7e3165ae67442931510b67a93e7065247236cfc1d"
$pkg_bin_dirs=@("bin")
$pkg_binds_optional=@{
  backend="port"
}
$pkg_description="Sensu, Inc. 2.0 Agent"
$pkg_upstream_url="https://sensu.io"

function Invoke-Unpack {
  return 0
}

function Invoke-Build {
  return 0
}

function Invoke-Install {
  Write-BuildLine "Installing $pkg_filename binary"
  if(!(Test-Path "$pkg_prefix/bin")){
    mkdir "$pkg_prefix/bin"
  }
  Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_filename" "$pkg_prefix/bin/$pkg_filename.exe"
}
