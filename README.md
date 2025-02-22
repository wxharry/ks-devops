[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/kubesphere/ks-devops)
[![](https://goreportcard.com/badge/kubesphere/ks-devops)](https://goreportcard.com/report/kubesphere/ks-devops)
[![codecov](https://codecov.io/gh/kubesphere/ks-devops/branch/master/graph/badge.svg?token=XS8g2CjdNL)](https://codecov.io/gh/kubesphere/ks-devops)
[![Contributors](https://img.shields.io/github/contributors/kubesphere/ks-devops.svg)](https://github.com/kubesphere/ks-devops/graphs/contributors)

## Get started

1. Install KubeSphere via [kk](https://github.com/kubesphere/kubekey/) (or other ways). 
    This is an optional step, basically we need a Kubernetes Cluster and the front-end of DevOps.
1. Install `ks-devops` via [chart](charts/ks-devops)
1. Replace the images of `ks-apiserver` and `ks-controller-manager`. In current phase, we need to use a temporary images of [KubeSphere](https://github.com/kubesphere/kubesphere/) 
which comes from [the branch remove-devops-ctrl](https://github.com/LinuxSuRen/kubesphere/tree/remove-devops-ctrl):

* `kubespheredev/ks-apiserver:remove-devops-ctrl`
* `kubespheredev/ks-controller-manager:remove-devops-ctrl`

Want to go into deep? Please checkout the [documentation](docs).

### Install it as a Helm Chart

First, please clone this git repository. Then run command: `make install-chart`
 - Because the default registry uses `ghcr.io/kubesphere`, if you want to use `docker.io` as the registry for image pull, you can exec `helm install ks-devops chart/ks-devops --set image.registry=kubespheredev`

### Run it locally

Technically, [apiserver](cmd/apiserver) and [controller](cmd/controller) are all binary files. So, 
it's possible to run them in your local environment. You just need to make sure that the connection 
between your environment and a Kubernetes cluster works well. This is a default config file of these 
components, please see also [the sample file](config/samples/kubesphere.yaml).

### Development locally

- Run [kind](https://github.com/kubernetes-sigs/kind) in local or remote machine
  
- Make sure that you can access cluster via kubectl command in local machine
  
- Execute the following command to install our CRDs:

```shell
make install
```

- Debug code...

- Execute the following command to uninstall our CRDs:

```shell
make uninstall
```

## Create Pipeline via CLI

[ks](https://github.com/linuxsuren/ks) is an official client of KubeSphere. You can create a Pipeline by it.

`ks pip create --ws simple --template java --project default --skip-check -b good`

## APIs

For example, you can access an API like:

```shell script
curl -H "X-Authorization: Bearer xxxx" \
  http://localhost:9090/kapis/devops.kubesphere.io/v1alpha3/devops/testblpsz/pipelines
```

> Please get a token from Kubernetes cluster, and replace `xxxx` with it.

If you want to see ks-devops postman API collection , please visit **[ks-devops postman](https://www.postman.com/ks-devops/workspace/kubesphere-devops)**

## Code contribution

If you're going to update or add CRD go struct, please run the following command once done with that:

`make manifests generate generate-listers`

then, it can generate CRDs and DeepCopy methods.

## Lint your codes

We are using [golangci-lint](https://golangci-lint.run/) as our code linter. Before you make some code changes, please execute following command to check code style:

```shell
golangci-lint run
# Or with specified folder, e.g.
golangci-lint run controllers/jenkinsconfig
```

## TODO

* A separate front-end project of ks-devops
* Auth support
    * OIDC support as a default provider

## Experimental support

[octant-ks-devops](https://github.com/LinuxSuRen/octant-ks-devops) is a plugin of [octant](https://github.com/vmware-tanzu/octant/).
It provides a dashboard for Kubernetes and ks-devops.

## Available communication channels:

- [KubeSphere Devops google group](https://groups.google.com/g/kubesphere-sig-devops/)
- [DevOps Slack channel for English speakers](https://kubesphere.slack.com/archives/C010TH02010)
- [DevOps Slack channel for Chinese speakers](https://kubesphere.slack.com/archives/C026V4FBWBW)
- [Forum for Chinese speakers](https://kubesphere.com.cn/forum/t/DevOps)
- [KubeSphere DevOps Special Interest Group](https://github.com/kubesphere/community/tree/master/sig-devops)

## Additional links 

- [Collection of KubeSphere Devops related projects](docs/projects.md)
