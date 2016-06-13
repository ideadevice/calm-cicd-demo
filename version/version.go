package version

import (
	"io/ioutil"
)

type Version struct {
	VersionName string
}

func read_version() Version {
	file := "version"
	v := Version{}
	b, err := ioutil.ReadFile(file)
	if err != nil {
		panic(err)
	}
	v.VersionName = string(b)
	return v
}
