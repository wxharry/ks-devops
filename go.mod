module kubesphere.io/devops

go 1.13

require (
	code.cloudfoundry.org/bytefmt v0.0.0-20210524144015-27119551aaea
	github.com/PuerkitoBio/goquery v1.6.1
	github.com/asaskevich/govalidator v0.0.0-20190424111038-f61b66f89f4a
	github.com/aws/aws-sdk-go v1.38.52
	github.com/beevik/etree v1.1.0
	github.com/davecgh/go-spew v1.1.1
	github.com/docker/docker v0.7.3-0.20190327010347-be7ac8be2ae0
	github.com/emicklei/go-restful v2.9.6+incompatible
	github.com/emicklei/go-restful-openapi v1.4.1
	github.com/fatih/structs v1.1.0
	github.com/form3tech-oss/jwt-go v3.2.2+incompatible
	github.com/go-logr/logr v0.3.0
	github.com/go-logr/zapr v0.2.0 // indirect
	github.com/go-openapi/spec v0.19.3
	github.com/go-redis/redis v6.15.2+incompatible
	github.com/golang/example v0.0.0-20170904185048-46695d81d1fa
	github.com/golang/mock v1.6.0
	github.com/google/go-cmp v0.5.5
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/jenkins-zh/jenkins-client v0.0.2
	github.com/kubesphere/sonargo v0.0.2
	github.com/onsi/ginkgo v1.16.4
	github.com/onsi/gomega v1.15.0
	github.com/prometheus/client_golang v1.8.0 // indirect
	github.com/sony/sonyflake v1.0.0
	github.com/speps/go-hashids v2.0.0+incompatible
	github.com/spf13/cobra v1.1.3
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.7.0
	github.com/stretchr/testify v1.7.0
	golang.org/x/lint v0.0.0-20191125180803-fdd1cda4f05f // indirect
	golang.org/x/net v0.0.0-20210428140749-89ef3d95e781
	golang.org/x/oauth2 v0.0.0-20191202225959-858c2ad4c8b6 // indirect
	google.golang.org/appengine v1.6.5 // indirect
	gopkg.in/yaml.v2 v2.4.0
	gotest.tools v2.2.0+incompatible
	k8s.io/api v0.20.2
	k8s.io/apiextensions-apiserver v0.20.2
	k8s.io/apimachinery v0.20.2
	k8s.io/apiserver v0.20.2
	k8s.io/client-go v12.0.0+incompatible
	k8s.io/component-base v0.20.2
	k8s.io/klog v1.0.0
	k8s.io/klog/v2 v2.4.0
	k8s.io/kube-openapi v0.0.0-20210527164424-3c818078ee3d
	kubesphere.io/api v0.0.0-20210511124541-08f2d682bd07
	sigs.k8s.io/controller-runtime v0.6.3
)

replace (
	github.com/fatih/structs => github.com/fatih/structs v1.1.0
	github.com/go-redis/redis => github.com/go-redis/redis v6.15.2+incompatible
	github.com/golang/example => github.com/golang/example v0.0.0-20170904185048-46695d81d1fa
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.4.0
	github.com/kubesphere/sonargo => github.com/kubesphere/sonargo v0.0.2
	k8s.io/api => k8s.io/api v0.18.6
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.18.6
	k8s.io/apimachinery => k8s.io/apimachinery v0.18.6
	k8s.io/apiserver => k8s.io/apiserver v0.18.6
	k8s.io/client-go => k8s.io/client-go v0.18.6
	k8s.io/component-base => k8s.io/component-base v0.18.6
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20200410145947-61e04a5be9a6
	sigs.k8s.io/application => sigs.k8s.io/application v0.8.4-0.20201016185654-c8e2959e57a0
)
