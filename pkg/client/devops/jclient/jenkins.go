package jclient

import (
	client "github.com/jenkins-zh/jenkins-client/pkg/core"
	"kubesphere.io/devops/pkg/client/devops/jenkins"
)

type JenkinsClient struct {
	Core client.JenkinsCore
}

func NewJenkinsOptions() *jenkins.Options {
	return &jenkins.Options{
		Host:     "",
		Username: "",
		Password: "",
	}
}

func NewJenkinsClient(options *jenkins.Options) (jenkinsClient JenkinsClient, err error) {
	core := client.JenkinsCore{
		URL:      options.Host,
		UserName: options.Username,
		Token:    options.Password,
	}
	crumbIssuer, e := core.GetCrumb()
	if e != nil {
		return
	} else if crumbIssuer != nil {
		core.JenkinsCrumb = *crumbIssuer
	}
	jenkinsClient = JenkinsClient{
		Core: core,
	}
	return
}
